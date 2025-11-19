@interface MTHostWindowReadyTrackingController
- (MTHostWindowReadyTrackingController)init;
- (void)_hostWindowDidBecomeReady;
- (void)performPendingBlocksIfReady;
- (void)runBlockWhenReady:(id)a3;
- (void)start;
@end

@implementation MTHostWindowReadyTrackingController

- (MTHostWindowReadyTrackingController)init
{
  v6.receiver = self;
  v6.super_class = MTHostWindowReadyTrackingController;
  v2 = [(MTHostWindowReadyTrackingController *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    pendingBlocks = v2->_pendingBlocks;
    v2->_pendingBlocks = v3;
  }

  return v2;
}

- (void)runBlockWhenReady:(id)a3
{
  if (a3)
  {
    pendingBlocks = self->_pendingBlocks;
    v5 = objc_retainBlock(a3);
    [(NSMutableArray *)pendingBlocks addObject:v5];

    [(MTHostWindowReadyTrackingController *)self performPendingBlocksIfReady];
  }
}

- (void)start
{
  if (!self->_observing || self->_isReady)
  {
    self->_observing = 1;
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"_hostWindowDidBecomeReady" name:@"UISBHSMainHostWindowDidBecomeKeyNotification" object:0];
  }
}

- (void)_hostWindowDidBecomeReady
{
  self->_isReady = 1;
  self->_observing = 0;
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"UISBHSMainHostWindowDidBecomeKeyNotification" object:0];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001122B4;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)performPendingBlocksIfReady
{
  if (self->_isReady)
  {
    v4 = [(NSMutableArray *)self->_pendingBlocks copy];
    [(NSMutableArray *)self->_pendingBlocks removeAllObjects];
    [v4 enumerateObjectsUsingBlock:&stru_1004DCCD0];
  }
}

@end