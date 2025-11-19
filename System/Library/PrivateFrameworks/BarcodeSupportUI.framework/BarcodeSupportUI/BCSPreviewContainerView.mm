@interface BCSPreviewContainerView
- (void)layoutSubviews;
- (void)setPreviewLayer:(id)a3;
@end

@implementation BCSPreviewContainerView

- (void)setPreviewLayer:(id)a3
{
  v5 = a3;
  if (self->_previewLayer != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_previewLayer, a3);
    [(AVCaptureVideoPreviewLayer *)self->_previewLayer setVideoGravity:*MEMORY[0x277CE5DD8]];
    v6 = [(BCSPreviewContainerView *)self layer];
    [v6 addSublayer:self->_previewLayer];

    v5 = v7;
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
  v11 = [(BCSPreviewContainerView *)self previewLayer];
  [v11 setFrame:{v4, v6, v8, v10}];
}

@end