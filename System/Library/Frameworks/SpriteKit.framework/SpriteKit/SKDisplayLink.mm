@interface SKDisplayLink
+ (SKDisplayLink)displayLinkWithDisplay:(id)display handler:(id)handler client:(id)client;
- (SKDisplayLink)initWithDisplay:(id)display handler:(id)handler client:(id)client;
- (void)_caDisplayLinkCallback;
- (void)_callbackForNextFrame:(double)frame;
- (void)_setup;
- (void)_teardown;
- (void)dealloc;
- (void)setDisplay:(id)display;
- (void)setPaused:(BOOL)paused;
- (void)setPreferredFramesPerSecond:(int64_t)second;
@end

@implementation SKDisplayLink

- (SKDisplayLink)initWithDisplay:(id)display handler:(id)handler client:(id)client
{
  displayCopy = display;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = SKDisplayLink;
  v11 = [(SKDisplayLink *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_display, display);
    v12->_preferredFramesPerSecond = 60.0;
    timer = v12->_timer;
    v12->_timer = 0;

    v12->_paused = 1;
    v14 = MEMORY[0x21CF0AB10](handlerCopy);
    block = v12->_block;
    v12->_block = v14;

    caDisplayLink = v12->_caDisplayLink;
    v12->_client = client;
    v12->_caDisplayLink = 0;

    [(SKDisplayLink *)v12 _setup];
  }

  return v12;
}

+ (SKDisplayLink)displayLinkWithDisplay:(id)display handler:(id)handler client:(id)client
{
  displayCopy = display;
  handlerCopy = handler;
  v9 = [objc_alloc(objc_opt_class()) initWithDisplay:displayCopy handler:handlerCopy client:client];

  return v9;
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  kdebug_trace();
  if (self->_paused != pausedCopy)
  {
    self->_paused = pausedCopy;
    caDisplayLink = self->_caDisplayLink;
    if (caDisplayLink)
    {

      [(CADisplayLink *)caDisplayLink setPaused:pausedCopy];
    }
  }
}

- (void)setPreferredFramesPerSecond:(int64_t)second
{
  self->_preferredFramesPerSecond = second;
  kdebug_trace();
  caDisplayLink = self->_caDisplayLink;
  if (caDisplayLink)
  {
    preferredFramesPerSecond = self->_preferredFramesPerSecond;

    [(CADisplayLink *)caDisplayLink setPreferredFramesPerSecond:preferredFramesPerSecond];
  }
}

- (void)setDisplay:(id)display
{
  displayCopy = display;
  if (self->_display != displayCopy)
  {
    objc_storeStrong(&self->_display, display);
    caDisplayLink = self->_caDisplayLink;
    if (caDisplayLink)
    {
      display = [(CADisplayLink *)caDisplayLink display];

      if (display != displayCopy)
      {
        [(SKDisplayLink *)self _teardown];
        [(SKDisplayLink *)self _setup];
      }
    }
  }
}

- (void)_setup
{
  self->_averageFrameTime = 0.0;
  self->_frameCount = 0;
  self->_frameCountBeginTime = 0.0;
  kdebug_trace();
  caDisplayLink = self->_caDisplayLink;
  if (caDisplayLink)
  {
    [(CADisplayLink *)caDisplayLink invalidate];
    v4 = self->_caDisplayLink;
    self->_caDisplayLink = 0;
  }

  display = self->_display;
  if (display)
  {
    [MEMORY[0x277CD9E48] displayLinkWithDisplay:display target:self selector:sel__caDisplayLinkCallback];
  }

  else
  {
    [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__caDisplayLinkCallback];
  }
  v6 = ;
  v7 = self->_caDisplayLink;
  self->_caDisplayLink = v6;

  [(CADisplayLink *)self->_caDisplayLink setPreferredFramesPerSecond:self->_preferredFramesPerSecond];
  [(CADisplayLink *)self->_caDisplayLink setPaused:self->_paused];
  v8 = self->_caDisplayLink;
  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [CADisplayLink addToRunLoop:v8 forMode:"addToRunLoop:forMode:"];
}

- (void)_teardown
{
  kdebug_trace();
  caDisplayLink = self->_caDisplayLink;
  if (caDisplayLink)
  {
    [(CADisplayLink *)caDisplayLink invalidate];
    v4 = self->_caDisplayLink;
    self->_caDisplayLink = 0;
  }
}

- (void)_callbackForNextFrame:(double)frame
{
  if (sk_debug_get_optional() && sk_debug_get_optional())
  {
    kdebug_trace();
  }

  if (!self->_paused)
  {
    (*(self->_block + 2))(frame);
    self->_previousFrameTime = frame;
    frameCount = self->_frameCount;
    self->_frameCount = frameCount + 1;
    if (frameCount >= 4)
    {
      preferredFramesPerSecond = self->_preferredFramesPerSecond;
      v7 = frame - frame;
      v8 = (frame - self->_frameCountBeginTime) / (frameCount + 1);
      self->_averageFrameTime = v8;
      self->_frameCountBeginTime = frame;
      self->_frameCount = 0;
      if ((preferredFramesPerSecond * 0.75) > v7 && vabds_f32(v7, v8) < 0.002)
      {
        kdebug_trace();
        [(SKDisplayLink *)self _teardown];

        [(SKDisplayLink *)self _setup];
      }
    }
  }
}

- (void)dealloc
{
  [(SKDisplayLink *)self invalidate];
  v3.receiver = self;
  v3.super_class = SKDisplayLink;
  [(SKDisplayLink *)&v3 dealloc];
}

- (void)_caDisplayLinkCallback
{
  v3 = objc_opt_respondsToSelector();
  caDisplayLink = self->_caDisplayLink;
  if (v3)
  {
    [(CADisplayLink *)caDisplayLink targetTimestamp];
  }

  else
  {
    [(CADisplayLink *)caDisplayLink timestamp];
    v5 = v6 + (1.0 / self->_preferredFramesPerSecond);
  }

  [(SKDisplayLink *)self _callbackForNextFrame:v5];
}

@end