@interface RPPipView
- (void)addPreviewLayer:(id)layer;
- (void)layoutSubviews;
@end

@implementation RPPipView

- (void)layoutSubviews
{
  [(RPPipView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  previewLayer = [(RPPipView *)self previewLayer];
  [previewLayer setFrame:{v4, v6, v8, v10}];
}

- (void)addPreviewLayer:(id)layer
{
  layerCopy = layer;
  layer = [(RPPipView *)self layer];
  [layer setMasksToBounds:1];

  [(RPPipView *)self setPreviewLayer:layerCopy];
  layer2 = [(RPPipView *)self layer];
  [layer2 addSublayer:layerCopy];
}

@end