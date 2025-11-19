@interface AEProgressIndicatorView
- (AEProgressIndicatorView)initWithFrame:(CGRect)a3 progress:(id)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation AEProgressIndicatorView

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a4;
  v11 = v10;
  if (AEProgressIndicatorViewObserverContext == a6)
  {
    [v10 fractionCompleted];
    [(PLRoundProgressView *)self setProgress:?];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = AEProgressIndicatorView;
    [(AEProgressIndicatorView *)&v12 observeValueForKeyPath:a3 ofObject:v10 change:a5 context:a6];
  }
}

- (void)dealloc
{
  v3 = [(AEProgressIndicatorView *)self _progress];
  [v3 removeObserver:self forKeyPath:@"fractionCompleted" context:AEProgressIndicatorViewObserverContext];

  v4.receiver = self;
  v4.super_class = AEProgressIndicatorView;
  [(PLRoundProgressView *)&v4 dealloc];
}

- (AEProgressIndicatorView)initWithFrame:(CGRect)a3 progress:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = AEProgressIndicatorView;
  v11 = [(PLRoundProgressView *)&v14 initWithFrame:0 style:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->__progress, a4);
    [(NSProgress *)v12->__progress addObserver:v12 forKeyPath:@"fractionCompleted" options:4 context:AEProgressIndicatorViewObserverContext];
  }

  return v12;
}

@end