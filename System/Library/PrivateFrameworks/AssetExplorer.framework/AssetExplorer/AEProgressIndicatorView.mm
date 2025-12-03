@interface AEProgressIndicatorView
- (AEProgressIndicatorView)initWithFrame:(CGRect)frame progress:(id)progress;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation AEProgressIndicatorView

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  v11 = objectCopy;
  if (AEProgressIndicatorViewObserverContext == context)
  {
    [objectCopy fractionCompleted];
    [(PLRoundProgressView *)self setProgress:?];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = AEProgressIndicatorView;
    [(AEProgressIndicatorView *)&v12 observeValueForKeyPath:path ofObject:objectCopy change:change context:context];
  }
}

- (void)dealloc
{
  _progress = [(AEProgressIndicatorView *)self _progress];
  [_progress removeObserver:self forKeyPath:@"fractionCompleted" context:AEProgressIndicatorViewObserverContext];

  v4.receiver = self;
  v4.super_class = AEProgressIndicatorView;
  [(PLRoundProgressView *)&v4 dealloc];
}

- (AEProgressIndicatorView)initWithFrame:(CGRect)frame progress:(id)progress
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  progressCopy = progress;
  v14.receiver = self;
  v14.super_class = AEProgressIndicatorView;
  height = [(PLRoundProgressView *)&v14 initWithFrame:0 style:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->__progress, progress);
    [(NSProgress *)v12->__progress addObserver:v12 forKeyPath:@"fractionCompleted" options:4 context:AEProgressIndicatorViewObserverContext];
  }

  return v12;
}

@end