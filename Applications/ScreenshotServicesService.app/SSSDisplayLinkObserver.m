@interface SSSDisplayLinkObserver
- (void)_displayLinkHandler:(id)a3;
- (void)dealloc;
- (void)startObserver;
- (void)stopObserver;
@end

@implementation SSSDisplayLinkObserver

- (void)dealloc
{
  [(SSSDisplayLinkObserver *)self stopObserver];
  v3.receiver = self;
  v3.super_class = SSSDisplayLinkObserver;
  [(SSSDisplayLinkObserver *)&v3 dealloc];
}

- (void)startObserver
{
  if (!self->_displayLink)
  {
    v4 = [CADisplayLink displayLinkWithTarget:self selector:"_displayLinkHandler:"];
    displayLink = self->_displayLink;
    self->_displayLink = v4;

    [(CADisplayLink *)self->_displayLink setPreferredFramesPerSecond:3];
    v6 = self->_displayLink;
    v7 = +[NSRunLoop mainRunLoop];
    [(CADisplayLink *)v6 addToRunLoop:v7 forMode:NSRunLoopCommonModes];
  }
}

- (void)_displayLinkHandler:(id)a3
{
  v4 = [(SSSDisplayLinkObserver *)self displayLinkObserverHandler];

  if (v4)
  {
    v5 = [(SSSDisplayLinkObserver *)self displayLinkObserverHandler];
    v6 = v5[2]();

    if ((v6 & 1) == 0)
    {

      [(SSSDisplayLinkObserver *)self stopObserver];
    }
  }
}

- (void)stopObserver
{
  displayLink = self->_displayLink;
  if (displayLink)
  {
    [(CADisplayLink *)displayLink invalidate];
    v4 = self->_displayLink;
    self->_displayLink = 0;
  }
}

@end