@interface __AVPlayerLayerView
- (AVPictureInPicturePlayerLayerView)pictureInPicturePlayerLayerView;
- (BOOL)isReadyForDisplay;
- (CGRect)videoBounds;
- (CGSize)videoDisplaySize;
- (NSDictionary)pixelBufferAttributes;
- (int64_t)videoGravity;
- (void)setPixelBufferAttributes:(id)attributes;
- (void)setPlayerController:(id)controller;
- (void)setVideoGravity:(int64_t)gravity;
- (void)setVideoScaled:(BOOL)scaled;
- (void)startRoutingVideoToPictureInPicturePlayerLayerView;
- (void)stopRoutingVideoToPictureInPicturePlayerLayerView;
@end

@implementation __AVPlayerLayerView

- (void)stopRoutingVideoToPictureInPicturePlayerLayerView
{
  pictureInPicturePlayerLayerView = [(__AVPlayerLayerView *)self pictureInPicturePlayerLayerView];
  playerLayer = [pictureInPicturePlayerLayerView playerLayer];

  if (playerLayer)
  {
    playerLayer2 = [(__AVPlayerLayerView *)self playerLayer];
    pictureInPicturePlayerLayerView2 = [(__AVPlayerLayerView *)self pictureInPicturePlayerLayerView];
    playerLayer3 = [pictureInPicturePlayerLayerView2 playerLayer];
    [playerLayer2 stopRedirectingVideoToLayer:playerLayer3];

    playerLayer4 = [(__AVPlayerLayerView *)self playerLayer];
    LODWORD(pictureInPicturePlayerLayerView2) = [playerLayer4 isLegibleDisplayEnabled];

    if (pictureInPicturePlayerLayerView2)
    {
      playerLayer5 = [(__AVPlayerLayerView *)self playerLayer];
      [playerLayer5 setLegibleDisplayEnabled:0];

      playerLayer6 = [(__AVPlayerLayerView *)self playerLayer];
      [playerLayer6 setLegibleDisplayEnabled:1];
    }

    pictureInPicturePlayerLayerView3 = [(__AVPlayerLayerView *)self pictureInPicturePlayerLayerView];
    playerLayer7 = [pictureInPicturePlayerLayerView3 playerLayer];
    [playerLayer7 setLegibleDisplayEnabled:1];
  }

  [(__AVPlayerLayerView *)self setPictureInPicturePlayerLayer:0];
  pictureInPicturePlayerLayerView4 = [(__AVPlayerLayerView *)self pictureInPicturePlayerLayerView];
  [pictureInPicturePlayerLayerView4 detachPlayerLayer];

  playerLayer8 = [(__AVPlayerLayerView *)self playerLayer];
  [playerLayer8 setPlaceholderContentLayerDuringPIPMode:0];
}

- (void)startRoutingVideoToPictureInPicturePlayerLayerView
{
  pictureInPicturePlayerLayerView = [(__AVPlayerLayerView *)self pictureInPicturePlayerLayerView];
  [pictureInPicturePlayerLayerView attachPlayerLayer];

  pictureInPicturePlayerLayerView2 = [(__AVPlayerLayerView *)self pictureInPicturePlayerLayerView];
  playerLayer = [pictureInPicturePlayerLayerView2 playerLayer];
  [(__AVPlayerLayerView *)self setPictureInPicturePlayerLayer:playerLayer];

  playerLayer2 = [(__AVPlayerLayerView *)self playerLayer];
  pictureInPicturePlayerLayerView3 = [(__AVPlayerLayerView *)self pictureInPicturePlayerLayerView];
  playerLayer3 = [pictureInPicturePlayerLayerView3 playerLayer];
  [playerLayer2 startRedirectingVideoToLayer:playerLayer3 forMode:0];

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

- (void)setPixelBufferAttributes:(id)attributes
{
  attributesCopy = attributes;
  playerLayer = [(__AVPlayerLayerView *)self playerLayer];
  [playerLayer setPixelBufferAttributes:attributesCopy];
}

- (NSDictionary)pixelBufferAttributes
{
  playerLayer = [(__AVPlayerLayerView *)self playerLayer];
  pixelBufferAttributes = [playerLayer pixelBufferAttributes];

  return pixelBufferAttributes;
}

- (void)setVideoScaled:(BOOL)scaled
{
  if (scaled)
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
  pictureInPicturePlayerLayer = [(__AVPlayerLayerView *)self pictureInPicturePlayerLayer];
  [pictureInPicturePlayerLayer videoRect];
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
  playerLayer = [(__AVPlayerLayerView *)self playerLayer];
  [playerLayer videoRect];
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
      playerController = [(__AVPlayerLayerView *)self playerController];
      [playerController contentDimensions];
      if (v14 != *MEMORY[0x1E695F060] || v13 != *(MEMORY[0x1E695F060] + 8))
      {
        playerController2 = [(__AVPlayerLayerView *)self playerController];
        [playerController2 contentDimensions];

        if ([(__AVPlayerLayerView *)self videoGravity]!= 1)
        {
          [(__AVPlayerLayerView *)self bounds];
          x = v29;
          y = v30;
          width = v31;
          height = v32;
          goto LABEL_11;
        }

        playerController = [(__AVPlayerLayerView *)self playerController];
        [playerController contentDimensions];
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
  playerLayer = [(__AVPlayerLayerView *)self playerLayer];
  isReadyForDisplay = [playerLayer isReadyForDisplay];

  return isReadyForDisplay;
}

- (void)setVideoGravity:(int64_t)gravity
{
  playerLayer = [(__AVPlayerLayerView *)self playerLayer];
  v4 = NSStringFromVideoGravity(gravity);
  [playerLayer setVideoGravity:v4];
}

- (int64_t)videoGravity
{
  playerLayer = [(__AVPlayerLayerView *)self playerLayer];
  videoGravity = [playerLayer videoGravity];
  v4 = AVVideoGravityFromString(videoGravity);

  return v4;
}

- (void)setPlayerController:(id)controller
{
  controllerCopy = controller;
  if (self->_playerController != controllerCopy)
  {
    v10 = controllerCopy;
    objc_storeStrong(&self->_playerController, controller);
    playerLayer = [(__AVPlayerLayerView *)self playerLayer];
    player = [(AVPlayerController *)v10 player];
    [playerLayer setPlayer:player];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    pictureInPicturePlayerLayerView = [(__AVPlayerLayerView *)self pictureInPicturePlayerLayerView];
    [pictureInPicturePlayerLayerView setBackgroundColor:clearColor];

    controllerCopy = v10;
  }
}

@end