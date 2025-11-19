@interface APLatencyVisualizationTrackingController
- (id)init:(id)a3;
- (void)dealloc;
- (void)draw;
@end

@implementation APLatencyVisualizationTrackingController

- (void)dealloc
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__APLatencyVisualizationTrackingController_dealloc__block_invoke;
  block[3] = &unk_278C608C8;
  block[4] = self;
  dispatch_sync(queue, block);
  dispatch_release(self->_queue);

  self->_layer = 0;
  v4.receiver = self;
  v4.super_class = APLatencyVisualizationTrackingController;
  [(APLatencyVisualizationTrackingController *)&v4 dealloc];
}

void __51__APLatencyVisualizationTrackingController_dealloc__block_invoke(uint64_t a1)
{
  dispatch_source_cancel(*(*(a1 + 32) + 16));
  v2 = *(*(a1 + 32) + 16);

  dispatch_release(v2);
}

- (id)init:(id)a3
{
  v11.receiver = self;
  v11.super_class = APLatencyVisualizationTrackingController;
  v4 = [(APLatencyVisualizationTrackingController *)&v11 init];
  if (v4)
  {
    *(v4 + 1) = a3;
    v5 = dispatch_queue_create("com.apple.airplay.receiver.latencyTracker", 0);
    *(v4 + 3) = v5;
    v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v5);
    *(v4 + 2) = v6;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __49__APLatencyVisualizationTrackingController_init___block_invoke;
    handler[3] = &unk_278C608C8;
    handler[4] = v4;
    dispatch_source_set_event_handler(v6, handler);
    v7 = *(v4 + 2);
    v8 = dispatch_time(0, 16666666);
    dispatch_source_set_timer(v7, v8, 0xFE502AuLL, 0x3E8uLL);
    dispatch_resume(*(v4 + 2));
  }

  return v4;
}

- (void)draw
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(APLatencyVisualizationLayer *)self->_layer setNeedsDisplay];
  [(APLatencyVisualizationLayer *)self->_layer display];
  v3 = MEMORY[0x277CD9FF0];

  [v3 commit];
}

@end