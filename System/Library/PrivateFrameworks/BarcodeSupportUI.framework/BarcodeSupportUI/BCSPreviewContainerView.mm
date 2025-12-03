@interface BCSPreviewContainerView
- (void)layoutSubviews;
- (void)setPreviewLayer:(id)layer;
@end

@implementation BCSPreviewContainerView

- (void)setPreviewLayer:(id)layer
{
  layerCopy = layer;
  if (self->_previewLayer != layerCopy)
  {
    v7 = layerCopy;
    objc_storeStrong(&self->_previewLayer, layer);
    [(AVCaptureVideoPreviewLayer *)self->_previewLayer setVideoGravity:*MEMORY[0x277CE5DD8]];
    layer = [(BCSPreviewContainerView *)self layer];
    [layer addSublayer:self->_previewLayer];

    layerCopy = v7;
  }
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = BCSPreviewContainerView;
  [(BCSPreviewContainerView *)&v12 layoutSubviews];
  [(BCSPreviewContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  previewLayer = [(BCSPreviewContainerView *)self previewLayer];
  [previewLayer setFrame:{v4, v6, v8, v10}];
}

@end