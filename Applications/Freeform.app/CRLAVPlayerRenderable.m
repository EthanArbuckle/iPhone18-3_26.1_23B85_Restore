@interface CRLAVPlayerRenderable
+ (id)renderable;
+ (id)renderableFromAVPlayerLayer:(id)a3;
- (CRLAVPlayerRenderable)initWithAVPlayerLayer:(id)a3;
- (id)p_avPlayerLayer;
- (void)addReadyToDisplayObserver:(id)a3 options:(unint64_t)a4 context:(void *)a5;
- (void)removeReadyToDisplayObserver:(id)a3 context:(void *)a4;
@end

@implementation CRLAVPlayerRenderable

- (CRLAVPlayerRenderable)initWithAVPlayerLayer:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLAVPlayerRenderable;
  return [(CRLCanvasRenderable *)&v4 initWithCALayer:a3];
}

+ (id)renderableFromAVPlayerLayer:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithAVPlayerLayer:v4];

  return v5;
}

+ (id)renderable
{
  v2 = [a1 alloc];
  v3 = +[AVPlayerLayer layer];
  v4 = [v2 initWithAVPlayerLayer:v3];

  return v4;
}

- (id)p_avPlayerLayer
{
  v4.receiver = self;
  v4.super_class = CRLAVPlayerRenderable;
  v2 = [(CRLCanvasRenderable *)&v4 layer];

  return v2;
}

- (void)addReadyToDisplayObserver:(id)a3 options:(unint64_t)a4 context:(void *)a5
{
  v8 = a3;
  v9 = [(CRLCanvasRenderable *)self layer];
  [v9 addObserver:v8 forKeyPath:@"readyForDisplay" options:a4 context:a5];
}

- (void)removeReadyToDisplayObserver:(id)a3 context:(void *)a4
{
  v6 = a3;
  v7 = [(CRLCanvasRenderable *)self layer];
  [v7 removeObserver:v6 forKeyPath:@"readyForDisplay" context:a4];
}

@end