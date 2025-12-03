@interface PKDisplayLinkObserver
- (BOOL)startWithPreferredFramesPerSecond:(CAFrameRateRange)second addToRunLoop:(id)loop forMode:(id)mode;
- (BOOL)stop;
- (PKDisplayLinkObserver)initWithHandler:(id)handler;
- (void)_displayLinkHandler:(id)handler;
- (void)dealloc;
@end

@implementation PKDisplayLinkObserver

- (PKDisplayLinkObserver)initWithHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = PKDisplayLinkObserver;
  v5 = [(PKDisplayLinkObserver *)&v9 init];
  if (v5)
  {
    v6 = [handlerCopy copy];
    handler = v5->_handler;
    v5->_handler = v6;
  }

  return v5;
}

- (void)dealloc
{
  [(PKDisplayLinkObserver *)self stop];
  v3.receiver = self;
  v3.super_class = PKDisplayLinkObserver;
  [(PKDisplayLinkObserver *)&v3 dealloc];
}

- (BOOL)startWithPreferredFramesPerSecond:(CAFrameRateRange)second addToRunLoop:(id)loop forMode:(id)mode
{
  displayLink = self->_displayLink;
  if (!displayLink)
  {
    preferred = second.preferred;
    maximum = second.maximum;
    minimum = second.minimum;
    v11 = MEMORY[0x1E6979330];
    modeCopy = mode;
    loopCopy = loop;
    v14 = [v11 displayLinkWithTarget:self selector:sel__displayLinkHandler_];
    v15 = self->_displayLink;
    self->_displayLink = v14;

    *&v16 = minimum;
    *&v17 = maximum;
    *&v18 = preferred;
    [(CADisplayLink *)self->_displayLink setPreferredFrameRateRange:v16, v17, v18];
    [(CADisplayLink *)self->_displayLink addToRunLoop:loopCopy forMode:modeCopy];
  }

  return displayLink == 0;
}

- (BOOL)stop
{
  displayLink = self->_displayLink;
  if (displayLink)
  {
    [(CADisplayLink *)self->_displayLink invalidate];
    v4 = self->_displayLink;
    self->_displayLink = 0;
  }

  return displayLink != 0;
}

- (void)_displayLinkHandler:(id)handler
{
  handlerCopy = handler;
  handler = self->_handler;
  if (handler)
  {
    v7 = handlerCopy;
    v6 = handler[2]();
    handlerCopy = v7;
    if ((v6 & 1) == 0)
    {
      [(PKDisplayLinkObserver *)self stop];
      handlerCopy = v7;
    }
  }
}

@end