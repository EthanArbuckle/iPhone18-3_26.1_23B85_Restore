@interface PKDisplayLinkObserver
- (BOOL)startWithPreferredFramesPerSecond:(CAFrameRateRange)a3 addToRunLoop:(id)a4 forMode:(id)a5;
- (BOOL)stop;
- (PKDisplayLinkObserver)initWithHandler:(id)a3;
- (void)_displayLinkHandler:(id)a3;
- (void)dealloc;
@end

@implementation PKDisplayLinkObserver

- (PKDisplayLinkObserver)initWithHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKDisplayLinkObserver;
  v5 = [(PKDisplayLinkObserver *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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

- (BOOL)startWithPreferredFramesPerSecond:(CAFrameRateRange)a3 addToRunLoop:(id)a4 forMode:(id)a5
{
  displayLink = self->_displayLink;
  if (!displayLink)
  {
    preferred = a3.preferred;
    maximum = a3.maximum;
    minimum = a3.minimum;
    v11 = MEMORY[0x1E6979330];
    v12 = a5;
    v13 = a4;
    v14 = [v11 displayLinkWithTarget:self selector:sel__displayLinkHandler_];
    v15 = self->_displayLink;
    self->_displayLink = v14;

    *&v16 = minimum;
    *&v17 = maximum;
    *&v18 = preferred;
    [(CADisplayLink *)self->_displayLink setPreferredFrameRateRange:v16, v17, v18];
    [(CADisplayLink *)self->_displayLink addToRunLoop:v13 forMode:v12];
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

- (void)_displayLinkHandler:(id)a3
{
  v4 = a3;
  handler = self->_handler;
  if (handler)
  {
    v7 = v4;
    v6 = handler[2]();
    v4 = v7;
    if ((v6 & 1) == 0)
    {
      [(PKDisplayLinkObserver *)self stop];
      v4 = v7;
    }
  }
}

@end