@interface ARCoachingUpdateManager
- (ARCoachingUpdateManagerDelegate)delegate;
- (id)init:(id)init metalLayer:(id)layer;
- (void)dealloc;
- (void)drawWithTimeDelta:(double)delta;
- (void)start;
- (void)stop;
- (void)update;
@end

@implementation ARCoachingUpdateManager

- (id)init:(id)init metalLayer:(id)layer
{
  initCopy = init;
  layerCopy = layer;
  v13.receiver = self;
  v13.super_class = ARCoachingUpdateManager;
  v8 = [(ARCoachingUpdateManager *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_metalLayer, layer);
    [(CAMetalLayer *)v9->_metalLayer setDevice:initCopy];
    [(CAMetalLayer *)v9->_metalLayer setPresentsWithTransaction:1];
    newCommandQueue = [initCopy newCommandQueue];
    commandQueue = v9->_commandQueue;
    v9->_commandQueue = newCommandQueue;

    [(MTLCommandQueue *)v9->_commandQueue setLabel:@"MetalRenderer command queue"];
    v9->_lastUpdateTime = 0.0;
  }

  return v9;
}

- (void)dealloc
{
  [(ARCoachingUpdateManager *)self stop];
  v3.receiver = self;
  v3.super_class = ARCoachingUpdateManager;
  [(ARCoachingUpdateManager *)&v3 dealloc];
}

- (void)start
{
  if (!self->_displayLink)
  {
    v3 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel_update];
    displayLink = self->_displayLink;
    self->_displayLink = v3;

    [(CADisplayLink *)self->_displayLink setPreferredFramesPerSecond:60];
    v5 = self->_displayLink;
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [(CADisplayLink *)v5 addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE640]];

    self->_lastUpdateTime = CACurrentMediaTime();
  }
}

- (void)stop
{
  displayLink = self->_displayLink;
  if (displayLink)
  {
    [(CADisplayLink *)displayLink invalidate];
    v4 = self->_displayLink;
    self->_displayLink = 0;
  }
}

- (void)update
{
  v3 = CACurrentMediaTime();
  v4 = v3 - self->_lastUpdateTime;
  delegate = [(ARCoachingUpdateManager *)self delegate];
  [delegate updateForCurrentTime:v3 timeDelta:v4];

  [(ARCoachingUpdateManager *)self drawWithTimeDelta:v4];
  self->_lastUpdateTime = v3;
}

- (void)drawWithTimeDelta:(double)delta
{
  [(CAMetalLayer *)self->_metalLayer bounds];
  if (!CGRectEqualToRect(v12, *MEMORY[0x277CBF3A0]))
  {
    commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
    if (commandBuffer)
    {
      v10 = commandBuffer;
      nextDrawable = [(CAMetalLayer *)self->_metalLayer nextDrawable];
      if (nextDrawable)
      {
        [v10 setLabel:@"Frame command buffer"];
        kdebug_trace();
        [v10 addCompletedHandler:&__block_literal_global_2];
        delegate = [(ARCoachingUpdateManager *)self delegate];

        if (delegate)
        {
          delegate2 = [(ARCoachingUpdateManager *)self delegate];
          [delegate2 resizeForDrawable:nextDrawable];

          delegate3 = [(ARCoachingUpdateManager *)self delegate];
          [delegate3 drawInDrawable:nextDrawable withCommandBuffer:v10 timeDelta:delta];
        }

        [v10 commit];
        [v10 waitUntilScheduled];
        [nextDrawable present];
      }

      commandBuffer = v10;
    }
  }
}

- (ARCoachingUpdateManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end