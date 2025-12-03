@interface AVDisplayLink
- (double)runningTime;
- (id)observer;
- (void)invalidate;
- (void)linkFired:(id)fired;
- (void)startDisplayLinkUpdatesForObserver:(id)observer framesPerSecond:(int64_t)second usingBlock:(id)block;
@end

@implementation AVDisplayLink

- (id)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (double)runningTime
{
  displayLink = [(AVDisplayLink *)self displayLink];
  if (displayLink)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(AVDisplayLink *)self startTime];
    v6 = Current - v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (void)linkFired:(id)fired
{
  observer = [(AVDisplayLink *)self observer];
  linkFired = [(AVDisplayLink *)self linkFired];

  if (linkFired && observer)
  {
    linkFired2 = [(AVDisplayLink *)self linkFired];
    (linkFired2)[2](linkFired2, observer, self);
  }

  else
  {
    [(AVDisplayLink *)self invalidate];
  }
}

- (void)invalidate
{
  displayLink = [(AVDisplayLink *)self displayLink];
  [displayLink invalidate];

  [(AVDisplayLink *)self setDisplayLink:0];

  [(AVDisplayLink *)self setLinkFired:0];
}

- (void)startDisplayLinkUpdatesForObserver:(id)observer framesPerSecond:(int64_t)second usingBlock:(id)block
{
  blockCopy = block;
  observerCopy = observer;
  [(AVDisplayLink *)self invalidate];
  [(AVDisplayLink *)self setObserver:observerCopy];

  [(AVDisplayLink *)self setLinkFired:blockCopy];
  v10 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel_linkFired_];
  [(AVDisplayLink *)self setDisplayLink:v10];

  displayLink = [(AVDisplayLink *)self displayLink];
  [displayLink setPreferredFramesPerSecond:second];

  [(AVDisplayLink *)self setStartTime:CFAbsoluteTimeGetCurrent()];
  displayLink2 = [(AVDisplayLink *)self displayLink];
  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  [displayLink2 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];
}

@end