@interface IMExternalVideoView
- (void)layoutSublayersOfLayer:(id)layer;
- (void)setVideoLayer:(id)layer;
@end

@implementation IMExternalVideoView

- (void)setVideoLayer:(id)layer
{
  layerCopy = layer;
  videoLayer = self->_videoLayer;
  if (videoLayer != layerCopy)
  {
    [(AVPlayerLayer *)videoLayer removeFromSuperlayer];
    objc_storeStrong(&self->_videoLayer, layer);
    layer = [(IMExternalVideoView *)self layer];
    [layer addSublayer:self->_videoLayer];
  }

  _objc_release_x1(videoLayer);
}

- (void)layoutSublayersOfLayer:(id)layer
{
  v17.receiver = self;
  v17.super_class = IMExternalVideoView;
  layerCopy = layer;
  [(IMExternalVideoView *)&v17 layoutSublayersOfLayer:layerCopy];
  v5 = [(IMExternalVideoView *)self layer:v17.receiver];

  if (v5 == layerCopy)
  {
    videoLayer = [(IMExternalVideoView *)self videoLayer];
    [videoLayer bounds];
    IsEmpty = CGRectIsEmpty(v18);

    if (IsEmpty)
    {
      +[CATransaction begin];
      [CATransaction setDisableActions:1];
    }

    [(IMExternalVideoView *)self bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    videoLayer2 = [(IMExternalVideoView *)self videoLayer];
    [videoLayer2 setFrame:{v9, v11, v13, v15}];

    if (IsEmpty)
    {
      +[CATransaction commit];
    }
  }
}

@end