@interface AVSecondScreenPlayerLayerView
- (AVPlayerLayer)activeSourcePlayerLayer;
- (void)dealloc;
- (void)startShowingContentFromSourcePlayerLayer:(id)layer;
- (void)stopShowingContentFromActiveSourcePlayerLayer;
@end

@implementation AVSecondScreenPlayerLayerView

- (AVPlayerLayer)activeSourcePlayerLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_activeSourcePlayerLayer);

  return WeakRetained;
}

- (void)stopShowingContentFromActiveSourcePlayerLayer
{
  observationController = [(AVSecondScreenPlayerLayerView *)self observationController];
  [observationController stopAllObservation];

  [(AVSecondScreenPlayerLayerView *)self setObservationController:0];
  activeSourcePlayerLayer = [(AVSecondScreenPlayerLayerView *)self activeSourcePlayerLayer];
  layer = [(AVSecondScreenPlayerLayerView *)self layer];
  [activeSourcePlayerLayer stopRedirectingVideoToLayer:layer];

  [(AVSecondScreenPlayerLayerView *)self setActiveSourcePlayerLayer:0];
  layer2 = [(AVSecondScreenPlayerLayerView *)self layer];
  [layer2 setPlayer:0];
}

- (void)startShowingContentFromSourcePlayerLayer:(id)layer
{
  layerCopy = layer;
  activeSourcePlayerLayer = [(AVSecondScreenPlayerLayerView *)self activeSourcePlayerLayer];
  v5 = [activeSourcePlayerLayer isEqual:layerCopy];

  if ((v5 & 1) == 0)
  {
    [(AVSecondScreenPlayerLayerView *)self stopShowingContentFromActiveSourcePlayerLayer];
    [(AVSecondScreenPlayerLayerView *)self setActiveSourcePlayerLayer:layerCopy];
    layer = [(AVSecondScreenPlayerLayerView *)self layer];
    [layerCopy startRedirectingVideoToLayer:layer forMode:1];

    observationController = [(AVSecondScreenPlayerLayerView *)self observationController];

    if (!observationController)
    {
      v8 = [[AVObservationController alloc] initWithOwner:self];
      [(AVSecondScreenPlayerLayerView *)self setObservationController:v8];

      observationController2 = [(AVSecondScreenPlayerLayerView *)self observationController];
      v10 = [observationController2 startObserving:self keyPath:@"layer.videoRect" includeInitialValue:1 observationHandler:&__block_literal_global_29695];
    }
  }
}

void __74__AVSecondScreenPlayerLayerView_startShowingContentFromSourcePlayerLayer___block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"AVSecondScreenConnectionVideoDisplaySizeChanged" object:0];
}

- (void)dealloc
{
  [(AVSecondScreenPlayerLayerView *)self stopShowingContentFromActiveSourcePlayerLayer];
  v3.receiver = self;
  v3.super_class = AVSecondScreenPlayerLayerView;
  [(AVSecondScreenPlayerLayerView *)&v3 dealloc];
}

@end