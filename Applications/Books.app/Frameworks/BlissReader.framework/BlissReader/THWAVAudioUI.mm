@interface THWAVAudioUI
- (CGRect)frameForOnCanvasUI;
- (CGRect)p_frameForHUDUI;
- (CGRect)p_frameForOnCanvasUI;
- (void)compactnessChanged;
- (void)createMovieUIViewBackground;
- (void)createViewsForConfigurationChange;
- (void)dealloc;
- (void)initialConfiguration;
- (void)layout;
- (void)pConfigureHUDVisibility;
- (void)pConfigureScrubberVisibility;
- (void)pCreateHUDBackgroundForView:(id)view;
- (void)p_handlePlayButtonPressed_compactUI:(id)i;
- (void)rateChanged:(double)changed;
- (void)timeChanged:(double)changed;
@end

@implementation THWAVAudioUI

- (void)dealloc
{
  [(THWAVAudioUI *)self setHiddenPlayButton:0];
  [(THWAVAudioUI *)self setHiddenPlayButton_compactUI:0];
  [(THWAVAudioUI *)self setPlayButton_compactUI:0];
  v3.receiver = self;
  v3.super_class = THWAVAudioUI;
  [(THWAVTransportUI *)&v3 dealloc];
}

- (void)pCreateHUDBackgroundForView:(id)view
{
  v4 = [TSUImage imageNamed:@"ib_media_audio_transport_bg" inBundle:THBundle()];
  [view setContentsFromImage:v4];
  [v4 size];

  [view setContentsCenter:{0.5, 0.0, 1.0 / v5, 1.0}];
}

- (void)createMovieUIViewBackground
{
  movieUIView = [(THWAVTransportUI *)self movieUIView];

  [(THWAVAudioUI *)self pCreateHUDBackgroundForView:movieUIView];
}

- (void)initialConfiguration
{
  [(THWAVTransportUI *)self setWantsPlayButton:1];

  [(THWAVTransportUI *)self setWantsScrubber:0];
}

- (void)createViewsForConfigurationChange
{
  v7.receiver = self;
  v7.super_class = THWAVAudioUI;
  [(THWAVTransportUI *)&v7 createViewsForConfigurationChange];
  if ([(THWAVTransportUI *)self isCompact])
  {
    if (![(THWAVTransportUI *)self compactUIView])
    {
      [(THWAVTransportUI *)self setCompactUIView:[[THCustomLayerView alloc] initWithFrame:0.0, 0.0, 0.0, 0.0]];
      [(THCustomLayerView *)[(THWAVTransportUI *)self compactUIView] setAutoresizesSubviews:1];
      -[THCustomLayerView setBackgroundColor:](-[THWAVTransportUI compactUIView](self, "compactUIView"), "setBackgroundColor:", [+[TSUColor clearColor](TSUColor "clearColor")]);
      [(THWAVAudioUI *)self pCreateHUDBackgroundForView:[(THWAVTransportUI *)self compactUIView]];
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      [(THWAVAudioUI *)self setHiddenPlayButton_compactUI:[UIButton tsdPlatformButtonWithFrame:CGRectZero.origin.x, y, width, height]];
      [(UIButton *)[(THWAVAudioUI *)self hiddenPlayButton_compactUI] setTarget:self action:"p_handlePlayButtonPressed_compactUI:"];
      [(THCustomLayerView *)[(THWAVTransportUI *)self compactUIView] addSubview:[(THWAVAudioUI *)self hiddenPlayButton_compactUI]];
      height = [TSKBiggerButton tsdPlatformButtonWithFrame:CGRectZero.origin.x, y, width, height];
      [height setTarget:self action:"p_handlePlayButtonPressed_compactUI:"];
      [height setHitBufferTop:10.0 left:10.0 bottom:10.0 right:10.0];
      [height setShowsTouchWhenHighlighted:1];
      [objc_msgSend(height "imageView")];
      [height setImageNamed:-[THWAVAudioUI imageNameForPlayButton](self inBundle:{"imageNameForPlayButton"), THBundle()}];
      [height setAlternateImageNamed:-[THWAVAudioUI imageNameForPlayButtonPressed](self inBundle:{"imageNameForPlayButtonPressed"), THBundle()}];
      [(THWAVAudioUI *)self setPlayButton_compactUI:height];
      [(THCustomLayerView *)[(THWAVTransportUI *)self compactUIView] addSubview:[(THWAVAudioUI *)self playButton_compactUI]];
    }

    if ([(THWAVAudioUI *)self hiddenPlayButton])
    {
      [(UIButton *)[(THWAVAudioUI *)self hiddenPlayButton] removeFromSuperview];
      [(THWAVAudioUI *)self setHiddenPlayButton:0];
    }
  }

  else
  {
    if (![(THWAVTransportUI *)self wantsScrubber]&& ![(THWAVAudioUI *)self hiddenPlayButton])
    {
      [(THWAVAudioUI *)self setHiddenPlayButton:[UIButton tsdPlatformButtonWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height]];
      [(UIButton *)[(THWAVAudioUI *)self hiddenPlayButton] setTarget:self action:"p_handlePlayButtonPressed:"];
      [(THCustomLayerView *)[(THWAVTransportUI *)self movieUIView] addSubview:[(THWAVAudioUI *)self hiddenPlayButton]];
    }

    if ([(THWAVTransportUI *)self wantsScrubber]&& [(THWAVAudioUI *)self hiddenPlayButton])
    {
      [(UIButton *)[(THWAVAudioUI *)self hiddenPlayButton] removeFromSuperview];
      [(THWAVAudioUI *)self setHiddenPlayButton:0];
    }

    if ([(THWAVTransportUI *)self compactUIView])
    {
      [(THCustomLayerView *)[(THWAVTransportUI *)self compactUIView] removeFromSuperview];
      [(THWAVTransportUI *)self setCompactUIView:0];
    }
  }
}

- (void)compactnessChanged
{
  v3.receiver = self;
  v3.super_class = THWAVAudioUI;
  [(THWAVTransportUI *)&v3 compactnessChanged];
  [(THWAVAudioUI *)self pConfigureHUDVisibility];
}

- (CGRect)p_frameForHUDUI
{
  transportController = [(THWAVTransportUI *)self transportController];

  [(THWAVTransportController *)transportController frameOfHUDFor:self];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)p_frameForOnCanvasUI
{
  [(THWAVTransportUI *)self layoutRect];
  v19 = CGRectIntegral(v18);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  [(THWAVTransportController *)[(THWAVTransportUI *)self transportController] onCanvasScale];
  if (v7 != 1.0)
  {
    TSDCenterOfRect();
    TSDRectWithCenterAndSize();
    x = v8;
    y = v9;
    width = v10;
    height = v11;
  }

  if (![-[THWMovieLayout movieInfo](-[THWAVTransportController movieLayout](-[THWAVTransportUI transportController](self "transportController")] && -[THWAVTransportController controlStyle](-[THWAVTransportUI transportController](self, "transportController"), "controlStyle") == 1)
  {
    height = (height + -30.0) * 0.5;
  }

  v12 = 545.0;
  if (width <= 545.0)
  {
    v12 = 180.0;
    if (width >= 180.0)
    {
      v12 = width;
    }

    else
    {
      v14 = (180.0 - width) * 0.5;
      x = x - roundf(v14);
    }
  }

  else
  {
    v13 = (width + -545.0) * 0.5;
    x = x + roundf(v13);
  }

  v15 = y + height;
  v16 = 30.0;
  v17 = x;
  result.size.height = v16;
  result.size.width = v12;
  result.origin.y = v15;
  result.origin.x = v17;
  return result;
}

- (CGRect)frameForOnCanvasUI
{
  if ([(THWAVTransportUI *)self isCompact])
  {
    [(THWAVAudioUI *)self p_frameForHUDUI];
  }

  else
  {
    [(THWAVAudioUI *)self p_frameForOnCanvasUI];
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)layout
{
  v32.receiver = self;
  v32.super_class = THWAVAudioUI;
  [(THWAVTransportUI *)&v32 layout];
  if ([(THWAVTransportUI *)self compactUIView])
  {
    [(THWAVAudioUI *)self p_frameForOnCanvasUI];
    [(THCustomLayerView *)[(THWAVTransportUI *)self compactUIView] setFrame:v3, v4, v5, v6];
    if ([(THWAVAudioUI *)self playButton_compactUI])
    {
      [(THCustomLayerView *)[(THWAVTransportUI *)self compactUIView] bounds];
      v8 = v7;
      v10 = v9;
      [(THWAVAudioUI *)self widthForPlayButton];
      v12 = v11;
      [(THWAVAudioUI *)self hudInternalPadding];
      [(UIButton *)[(THWAVAudioUI *)self playButton_compactUI] setFrame:v13, v8, v12, v10];
      [-[UIButton layer](-[THWAVAudioUI playButton_compactUI](self "playButton_compactUI")];
    }

    if ([(THWAVAudioUI *)self hiddenPlayButton_compactUI])
    {
      [(THCustomLayerView *)[(THWAVTransportUI *)self compactUIView] bounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      [(UIButton *)[(THWAVAudioUI *)self playButton_compactUI] bounds];
      MaxX = CGRectGetMaxX(v33);
      [(UIButton *)[(THWAVAudioUI *)self hiddenPlayButton_compactUI] setFrame:v15 + MaxX, v17, v19 - MaxX, v21];
    }
  }

  if ([(THWAVAudioUI *)self hiddenPlayButton])
  {
    [(THCustomLayerView *)[(THWAVTransportUI *)self movieUIView] bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    [(UIButton *)[(THWAVTransportUI *)self playButton] bounds];
    v31 = CGRectGetMaxX(v34);
    [(UIButton *)[(THWAVAudioUI *)self hiddenPlayButton] setFrame:v24 + v31, v26, v28 - v31, v30];
  }
}

- (void)rateChanged:(double)changed
{
  v9.receiver = self;
  v9.super_class = THWAVAudioUI;
  [(THWAVTransportUI *)&v9 rateChanged:changed];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v6 = sub_16D7E8;
  v7 = &unk_45AE00;
  selfCopy = self;
  if (+[NSThread isMainThread])
  {
    v6(v5);
  }

  else
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_16D824;
    v4[3] = &unk_45B8B0;
    v4[4] = v5;
    dispatch_async(&_dispatch_main_q, v4);
  }
}

- (void)timeChanged:(double)changed
{
  v4.receiver = self;
  v4.super_class = THWAVAudioUI;
  [(THWAVTransportUI *)&v4 timeChanged:changed];
  [(THWAVAudioUI *)self pConfigureScrubberVisibility];
}

- (void)pConfigureHUDVisibility
{
  if ([(THWAVTransportUI *)self isCompact]&& [(THWAVTransportUI *)self movieIsPlaying])
  {
    transportController = [(THWAVTransportUI *)self transportController];

    [(THWAVTransportController *)transportController showTransportHUDFor:self];
  }

  else
  {
    transportController2 = [(THWAVTransportUI *)self transportController];

    [(THWAVTransportController *)transportController2 hideTransportHUDFor:self];
  }
}

- (void)pConfigureScrubberVisibility
{
  if ([(THWAVTransportUI *)self movieIsPlaying])
  {
    if ([(THWAVTransportUI *)self wantsScrubber])
    {
      return;
    }

    v3 = 1;
  }

  else
  {
    [(THWAVTransportController *)[(THWAVTransportUI *)self transportController] currentTime];
    v3 = v4 > 0.1;
    if (v3 == [(THWAVTransportUI *)self wantsScrubber])
    {
      return;
    }
  }

  [(THWAVTransportUI *)self setWantsScrubber:v3];
  [(THWAVAudioUI *)self createViewsForConfigurationChange];
  [(THWAVTransportUI *)self configureViewsForConfigurationChange];

  [(THWAVTransportUI *)self i_layout];
}

- (void)p_handlePlayButtonPressed_compactUI:(id)i
{
  if (![(THWAVTransportUI *)self movieIsPlaying])
  {

    [(THWAVTransportUI *)self togglePlay];
  }
}

@end