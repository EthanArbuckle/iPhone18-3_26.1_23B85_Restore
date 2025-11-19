@interface AVSecondScreenPlayerLayerView
- (AVPlayerLayer)activeSourcePlayerLayer;
- (void)dealloc;
- (void)startShowingContentFromSourcePlayerLayer:(id)a3;
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
  v3 = [(AVSecondScreenPlayerLayerView *)self observationController];
  [v3 stopAllObservation];

  [(AVSecondScreenPlayerLayerView *)self setObservationController:0];
  v4 = [(AVSecondScreenPlayerLayerView *)self activeSourcePlayerLayer];
  v5 = [(AVSecondScreenPlayerLayerView *)self layer];
  [v4 stopRedirectingVideoToLayer:v5];

  [(AVSecondScreenPlayerLayerView *)self setActiveSourcePlayerLayer:0];
  v6 = [(AVSecondScreenPlayerLayerView *)self layer];
  [v6 setPlayer:0];
}

- (void)startShowingContentFromSourcePlayerLayer:(id)a3
{
  v11 = a3;
  v4 = [(AVSecondScreenPlayerLayerView *)self activeSourcePlayerLayer];
  v5 = [v4 isEqual:v11];

  if ((v5 & 1) == 0)
  {
    [(AVSecondScreenPlayerLayerView *)self stopShowingContentFromActiveSourcePlayerLayer];
    [(AVSecondScreenPlayerLayerView *)self setActiveSourcePlayerLayer:v11];
    v6 = [(AVSecondScreenPlayerLayerView *)self layer];
    [v11 startRedirectingVideoToLayer:v6 forMode:1];

    v7 = [(AVSecondScreenPlayerLayerView *)self observationController];

    if (!v7)
    {
      v8 = [[AVObservationController alloc] initWithOwner:self];
      [(AVSecondScreenPlayerLayerView *)self setObservationController:v8];

      v9 = [(AVSecondScreenPlayerLayerView *)self observationController];
      v10 = [v9 startObserving:self keyPath:@"layer.videoRect" includeInitialValue:1 observationHandler:&__block_literal_global_29695];
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