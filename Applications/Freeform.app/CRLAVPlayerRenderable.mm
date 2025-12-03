@interface CRLAVPlayerRenderable
+ (id)renderable;
+ (id)renderableFromAVPlayerLayer:(id)layer;
- (CRLAVPlayerRenderable)initWithAVPlayerLayer:(id)layer;
- (id)p_avPlayerLayer;
- (void)addReadyToDisplayObserver:(id)observer options:(unint64_t)options context:(void *)context;
- (void)removeReadyToDisplayObserver:(id)observer context:(void *)context;
@end

@implementation CRLAVPlayerRenderable

- (CRLAVPlayerRenderable)initWithAVPlayerLayer:(id)layer
{
  v4.receiver = self;
  v4.super_class = CRLAVPlayerRenderable;
  return [(CRLCanvasRenderable *)&v4 initWithCALayer:layer];
}

+ (id)renderableFromAVPlayerLayer:(id)layer
{
  layerCopy = layer;
  v5 = [[self alloc] initWithAVPlayerLayer:layerCopy];

  return v5;
}

+ (id)renderable
{
  v2 = [self alloc];
  v3 = +[AVPlayerLayer layer];
  v4 = [v2 initWithAVPlayerLayer:v3];

  return v4;
}

- (id)p_avPlayerLayer
{
  v4.receiver = self;
  v4.super_class = CRLAVPlayerRenderable;
  layer = [(CRLCanvasRenderable *)&v4 layer];

  return layer;
}

- (void)addReadyToDisplayObserver:(id)observer options:(unint64_t)options context:(void *)context
{
  observerCopy = observer;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer addObserver:observerCopy forKeyPath:@"readyForDisplay" options:options context:context];
}

- (void)removeReadyToDisplayObserver:(id)observer context:(void *)context
{
  observerCopy = observer;
  layer = [(CRLCanvasRenderable *)self layer];
  [layer removeObserver:observerCopy forKeyPath:@"readyForDisplay" context:context];
}

@end