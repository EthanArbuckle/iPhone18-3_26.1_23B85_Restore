@interface AVPlayerLayerView
@end

@implementation AVPlayerLayerView

void __73____AVPlayerLayerView_startRoutingVideoToPictureInPicturePlayerLayerView__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DB878] systemFontOfSize:140.0 weight:*MEMORY[0x1E69DB988]];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __73____AVPlayerLayerView_startRoutingVideoToPictureInPicturePlayerLayerView__block_invoke_2;
  v3[3] = &unk_1E72074B8;
  v3[4] = *(a1 + 32);
  [MEMORY[0x1E69DCAB8] avkit_imageWithSymbolNamed:@"pip" font:v2 completion:v3];
}

void __73____AVPlayerLayerView_startRoutingVideoToPictureInPicturePlayerLayerView__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69DC888];
  v4 = a2;
  v5 = [v3 AV_indicatorForegroundColor];
  v18 = [v4 _flatImageWithColor:v5];

  v6 = [*(a1 + 32) playerLayer];
  v7 = [AVPictureInPictureIndicatorLayer alloc];
  v8 = [*(a1 + 32) traitCollection];
  [v8 displayScale];
  v10 = v9;
  v11 = v18;
  v12 = [v18 CGImage];
  [*(a1 + 32) videoBounds];
  v17 = [(AVPictureInPictureIndicatorLayer *)v7 initWithDisplayScale:v12 placeholderImage:0 opaque:v10 videoRectWhenPIPBegan:v13, v14, v15, v16];
  [v6 setPlaceholderContentLayerDuringPIPMode:v17];
}

@end