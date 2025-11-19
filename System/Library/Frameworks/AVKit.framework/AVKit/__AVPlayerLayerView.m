@interface __AVPlayerLayerView
- (AVPictureInPicturePlayerLayerView)pictureInPicturePlayerLayerView;
- (BOOL)isReadyForDisplay;
- (CGRect)videoBounds;
- (CGSize)videoDisplaySize;
- (NSDictionary)pixelBufferAttributes;
- (int64_t)videoGravity;
- (void)setPixelBufferAttributes:(id)a3;
- (void)setPlayerController:(id)a3;
- (void)setVideoGravity:(int64_t)a3;
- (void)setVideoScaled:(BOOL)a3;
- (void)startRoutingVideoToPictureInPicturePlayerLayerView;
- (void)stopRoutingVideoToPictureInPicturePlayerLayerView;
@end

@implementation __AVPlayerLayerView

- (void)stopRoutingVideoToPictureInPicturePlayerLayerView
{
  v3 = [(__AVPlayerLayerView *)self pictureInPicturePlayerLayerView];
  v4 = [v3 playerLayer];

  if (v4)
  {
    v5 = [(__AVPlayerLayerView *)self playerLayer];
    v6 = [(__AVPlayerLayerView *)self pictureInPicturePlayerLayerView];
    v7 = [v6 playerLayer];
    [v5 stopRedirectingVideoToLayer:v7];

    v8 = [(__AVPlayerLayerView *)self playerLayer];
    LODWORD(v6) = [v8 isLegibleDisplayEnabled];

    if (v6)
    {
      v9 = [(__AVPlayerLayerView *)self playerLayer];
      [v9 setLegibleDisplayEnabled:0];

      v10 = [(__AVPlayerLayerView *)self playerLayer];
      [v10 setLegibleDisplayEnabled:1];
    }

    v11 = [(__AVPlayerLayerView *)self pictureInPicturePlayerLayerView];
    v12 = [v11 playerLayer];
    [v12 setLegibleDisplayEnabled:1];
  }

  [(__AVPlayerLayerView *)self setPictureInPicturePlayerLayer:0];
  v13 = [(__AVPlayerLayerView *)self pictureInPicturePlayerLayerView];
  [v13 detachPlayerLayer];

  v14 = [(__AVPlayerLayerView *)self playerLayer];
  [v14 setPlaceholderContentLayerDuringPIPMode:0];
}

- (void)startRoutingVideoToPictureInPicturePlayerLayerView
{
  v3 = [(__AVPlayerLayerView *)self pictureInPicturePlayerLayerView];
  [v3 attachPlayerLayer];

  v4 = [(__AVPlayerLayerView *)self pictureInPicturePlayerLayerView];
  v5 = [v4 playerLayer];
  [(__AVPlayerLayerView *)self setPictureInPicturePlayerLayer:v5];

  v6 = [(__AVPlayerLayerView *)self playerLayer];
  v7 = [(__AVPlayerLayerView *)self pictureInPicturePlayerLayerView];
  v8 = [v7 playerLayer];
  [v6 startRedirectingVideoToLayer:v8 forMode:0];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73____AVPlayerLayerView_startRoutingVideoToPictureInPicturePlayerLayerView__block_invoke;
  block[3] = &unk_1E720A090;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (AVPictureInPicturePlayerLayerView)pictureInPicturePlayerLayerView
{
  pictureInPicturePlayerLayerView = self->_pictureInPicturePlayerLayerView;
  if (!pictureInPicturePlayerLayerView)
  {
    v4 = [AVPictureInPicturePlayerLayerView alloc];
    v5 = [(AVPictureInPicturePlayerLayerView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_pictureInPicturePlayerLayerView;
    self->_pictureInPicturePlayerLayerView = v5;

    pictureInPicturePlayerLayerView = self->_pictureInPicturePlayerLayerView;
  }

  return pictureInPicturePlayerLayerView;
}

- (void)setPixelBufferAttributes:(id)a3
{
  v4 = a3;
  v5 = [(__AVPlayerLayerView *)self playerLayer];
  [v5 setPixelBufferAttributes:v4];
}

- (NSDictionary)pixelBufferAttributes
{
  v2 = [(__AVPlayerLayerView *)self playerLayer];
  v3 = [v2 pixelBufferAttributes];

  return v3;
}

- (void)setVideoScaled:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(__AVPlayerLayerView *)self setVideoGravity:v3];
}

- (CGSize)videoDisplaySize
{
  v3 = [(__AVPlayerLayerView *)self pictureInPicturePlayerLayer];
  [v3 videoRect];
  v5 = v4;
  v7 = v6;

  if (v5 == *MEMORY[0x1E695F060] && v7 == *(MEMORY[0x1E695F060] + 8))
  {
    [(__AVPlayerLayerView *)self videoBounds];
    v5 = v9;
    v7 = v10;
  }

  v11 = v5;
  v12 = v7;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGRect)videoBounds
{
  v3 = [(__AVPlayerLayerView *)self playerLayer];
  [v3 videoRect];
  x = v4;
  y = v6;
  width = v8;
  height = v10;

  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  if (CGRectIsEmpty(v38))
  {
    [(__AVPlayerLayerView *)self bounds];
    if (!CGRectIsEmpty(v39))
    {
      v12 = [(__AVPlayerLayerView *)self playerController];
      [v12 contentDimensions];
      if (v14 != *MEMORY[0x1E695F060] || v13 != *(MEMORY[0x1E695F060] + 8))
      {
        v16 = [(__AVPlayerLayerView *)self playerController];
        [v16 contentDimensions];

        if ([(__AVPlayerLayerView *)self videoGravity]!= 1)
        {
          [(__AVPlayerLayerView *)self bounds];
          x = v29;
          y = v30;
          width = v31;
          height = v32;
          goto LABEL_11;
        }

        v12 = [(__AVPlayerLayerView *)self playerController];
        [v12 contentDimensions];
        v18 = v17;
        v20 = v19;
        [(__AVPlayerLayerView *)self bounds];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v37.width = v18;
        v37.height = v20;
        v42.origin.x = v22;
        v42.origin.y = v24;
        v42.size.width = v26;
        v42.size.height = v28;
        v40 = AVMakeRectWithAspectRatioInsideRect(v37, v42);
        x = v40.origin.x;
        y = v40.origin.y;
        width = v40.size.width;
        height = v40.size.height;
      }
    }
  }

LABEL_11:
  v33 = x;
  v34 = y;
  v35 = width;
  v36 = height;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (BOOL)isReadyForDisplay
{
  v2 = [(__AVPlayerLayerView *)self playerLayer];
  v3 = [v2 isReadyForDisplay];

  return v3;
}

- (void)setVideoGravity:(int64_t)a3
{
  v5 = [(__AVPlayerLayerView *)self playerLayer];
  v4 = NSStringFromVideoGravity(a3);
  [v5 setVideoGravity:v4];
}

- (int64_t)videoGravity
{
  v2 = [(__AVPlayerLayerView *)self playerLayer];
  v3 = [v2 videoGravity];
  v4 = AVVideoGravityFromString(v3);

  return v4;
}

- (void)setPlayerController:(id)a3
{
  v5 = a3;
  if (self->_playerController != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_playerController, a3);
    v6 = [(__AVPlayerLayerView *)self playerLayer];
    v7 = [(AVPlayerController *)v10 player];
    [v6 setPlayer:v7];

    v8 = [MEMORY[0x1E69DC888] clearColor];
    v9 = [(__AVPlayerLayerView *)self pictureInPicturePlayerLayerView];
    [v9 setBackgroundColor:v8];

    v5 = v10;
  }
}

@end