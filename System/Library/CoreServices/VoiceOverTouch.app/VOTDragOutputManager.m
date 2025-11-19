@interface VOTDragOutputManager
- (VOTDragOutputManager)init;
- (void)_announceDragCount;
- (void)_announceDragPickup;
- (void)_announceDropReady;
- (void)_announceDropUnready;
- (void)currentElementChanged;
- (void)dragDropped;
- (void)dragEnded;
- (void)dragMoved;
- (void)dragSessionStarted;
- (void)dragStatusChanged:(id)a3;
@end

@implementation VOTDragOutputManager

- (VOTDragOutputManager)init
{
  v9.receiver = self;
  v9.super_class = VOTDragOutputManager;
  v2 = [(VOTDragOutputManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.VoiceOver.dragoutput", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    *&v2->_dragActive = 0;
    v2->_dropReadyAnnounced = 0;
    currentStatus = v2->_currentStatus;
    v2->_currentStatus = 0;

    v6 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:v2->_queue];
    timer = v2->_timer;
    v2->_timer = v6;

    v2->_lastDragMove = -3061152000.0;
  }

  return v2;
}

- (void)dragSessionStarted
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F28C4;
  block[3] = &unk_1001C76E8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)dragMoved
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F2950;
  block[3] = &unk_1001C76E8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)dragStatusChanged:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F2AD0;
  v7[3] = &unk_1001C7778;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)dragEnded
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F2D88;
  block[3] = &unk_1001C76E8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)currentElementChanged
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F2E24;
  block[3] = &unk_1001C76E8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)dragDropped
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F2EAC;
  block[3] = &unk_1001C76E8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_announceDragPickup
{
  v3 = +[VOTOutputManager outputManager];
  v2 = +[VOSOutputEvent DidBeginPassthrough];
  [v3 sendEvent:v2];
}

- (void)_announceDragCount
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F3090;
  block[3] = &unk_1001C76E8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_announceDropReady
{
  v2 = sub_1000511CC(off_1001FDDD0, @"drop.ready", 0);
  [VOTOutputRequest sendRequestWithString:v2 shouldQueue:1];
}

- (void)_announceDropUnready
{
  v2 = sub_1000511CC(off_1001FDDD0, @"drop.unready", 0);
  [VOTOutputRequest sendRequestWithString:v2 shouldQueue:1];
}

@end