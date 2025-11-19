@interface AVDisplayLink
- (double)runningTime;
- (id)observer;
- (void)invalidate;
- (void)linkFired:(id)a3;
- (void)startDisplayLinkUpdatesForObserver:(id)a3 framesPerSecond:(int64_t)a4 usingBlock:(id)a5;
@end

@implementation AVDisplayLink

- (id)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (double)runningTime
{
  v3 = [(AVDisplayLink *)self displayLink];
  if (v3)
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

- (void)linkFired:(id)a3
{
  v6 = [(AVDisplayLink *)self observer];
  v4 = [(AVDisplayLink *)self linkFired];

  if (v4 && v6)
  {
    v5 = [(AVDisplayLink *)self linkFired];
    (v5)[2](v5, v6, self);
  }

  else
  {
    [(AVDisplayLink *)self invalidate];
  }
}

- (void)invalidate
{
  v3 = [(AVDisplayLink *)self displayLink];
  [v3 invalidate];

  [(AVDisplayLink *)self setDisplayLink:0];

  [(AVDisplayLink *)self setLinkFired:0];
}

- (void)startDisplayLinkUpdatesForObserver:(id)a3 framesPerSecond:(int64_t)a4 usingBlock:(id)a5
{
  v8 = a5;
  v9 = a3;
  [(AVDisplayLink *)self invalidate];
  [(AVDisplayLink *)self setObserver:v9];

  [(AVDisplayLink *)self setLinkFired:v8];
  v10 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel_linkFired_];
  [(AVDisplayLink *)self setDisplayLink:v10];

  v11 = [(AVDisplayLink *)self displayLink];
  [v11 setPreferredFramesPerSecond:a4];

  [(AVDisplayLink *)self setStartTime:CFAbsoluteTimeGetCurrent()];
  v13 = [(AVDisplayLink *)self displayLink];
  v12 = [MEMORY[0x1E695DFD0] mainRunLoop];
  [v13 addToRunLoop:v12 forMode:*MEMORY[0x1E695DA28]];
}

@end