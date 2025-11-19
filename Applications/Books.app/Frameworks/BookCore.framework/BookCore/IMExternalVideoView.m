@interface IMExternalVideoView
- (void)layoutSublayersOfLayer:(id)a3;
- (void)setVideoLayer:(id)a3;
@end

@implementation IMExternalVideoView

- (void)setVideoLayer:(id)a3
{
  v5 = a3;
  videoLayer = self->_videoLayer;
  if (videoLayer != v5)
  {
    [(AVPlayerLayer *)videoLayer removeFromSuperlayer];
    objc_storeStrong(&self->_videoLayer, a3);
    v7 = [(IMExternalVideoView *)self layer];
    [v7 addSublayer:self->_videoLayer];
  }

  _objc_release_x1(videoLayer);
}

- (void)layoutSublayersOfLayer:(id)a3
{
  v17.receiver = self;
  v17.super_class = IMExternalVideoView;
  v4 = a3;
  [(IMExternalVideoView *)&v17 layoutSublayersOfLayer:v4];
  v5 = [(IMExternalVideoView *)self layer:v17.receiver];

  if (v5 == v4)
  {
    v6 = [(IMExternalVideoView *)self videoLayer];
    [v6 bounds];
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
    v16 = [(IMExternalVideoView *)self videoLayer];
    [v16 setFrame:{v9, v11, v13, v15}];

    if (IsEmpty)
    {
      +[CATransaction commit];
    }
  }
}

@end