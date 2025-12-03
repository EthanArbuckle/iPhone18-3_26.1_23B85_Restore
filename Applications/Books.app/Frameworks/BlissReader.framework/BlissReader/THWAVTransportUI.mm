@interface THWAVTransportUI
- (BOOL)hidden;
- (BOOL)isCompact;
- (BOOL)movieIsPlaying;
- (BOOL)shouldPlayOnMainCanvasWithSize:(double)size;
- (BOOL)shouldShowControlsOnCanvas;
- (CGRect)frameForOnCanvasUI;
- (CGRect)layoutRect;
- (THCustomLayerView)onCanvasView;
- (THWAVTransportUI)initWithTransportController:(id)controller;
- (id)onCanvasViews;
- (void)changeCurrentTimeTo:(double)to;
- (void)compactnessChanged;
- (void)configureButtonsForPaused;
- (void)configureButtonsForPlaying;
- (void)configureViewsForConfigurationChange;
- (void)createMovieUIView;
- (void)createMovieUIViewBackground;
- (void)createViewsForConfigurationChange;
- (void)dealloc;
- (void)detailSlider:(id)slider didChangeValue:(float)value;
- (void)didLayout;
- (void)durationChanged:(double)changed;
- (void)i_layout;
- (void)initialConfiguration;
- (void)layout;
- (void)mediaDidPlayToEnd;
- (void)pause;
- (void)play;
- (void)rateChanged:(double)changed;
- (void)reconfigureViewsAndLayout;
- (void)setHidden:(BOOL)hidden;
- (void)timeChanged:(double)changed;
- (void)toggleHidden;
- (void)togglePlay;
- (void)willLayout;
@end

@implementation THWAVTransportUI

- (THWAVTransportUI)initWithTransportController:(id)controller
{
  v7.receiver = self;
  v7.super_class = THWAVTransportUI;
  v4 = [(THWAVTransportUI *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(THWAVTransportUI *)v4 setTransportController:controller];
    [(THWAVTransportUI *)v5 createMovieUIView];
    [(THWAVTransportUI *)v5 initialConfiguration];
    [(THWAVTransportUI *)v5 createViewsForConfigurationChange];
    [(THWAVTransportUI *)v5 configureViewsForConfigurationChange];
  }

  return v5;
}

- (void)dealloc
{
  [(THWAVTransportUI *)self setPlayButton:0];
  [(THWAVTransportUI *)self setScrubber:0];
  [(THWAVTransportUI *)self setMovieUIView:0];
  [(THWAVTransportUI *)self setCompactUIView:0];
  v3.receiver = self;
  v3.super_class = THWAVTransportUI;
  [(THWAVTransportUI *)&v3 dealloc];
}

- (void)initialConfiguration
{
  [(THWAVTransportUI *)self setWantsPlayButton:1];

  [(THWAVTransportUI *)self setWantsScrubber:1];
}

- (void)createMovieUIViewBackground
{
  v3 = [TSUImage imageNamed:@"ib_media_movie_transport_bg" inBundle:THBundle()];
  [(THCustomLayerView *)[(THWAVTransportUI *)self movieUIView] setContentsFromImage:v3];
  [v3 size];
  v5 = 1.0 / v4;
  v7 = 1.0 / v6;
  movieUIView = [(THWAVTransportUI *)self movieUIView];

  [(THCustomLayerView *)movieUIView setContentsCenter:0.5, 0.5, v5, v7];
}

- (void)createMovieUIView
{
  [(THWAVTransportUI *)self setMovieUIView:[[THCustomLayerView alloc] initWithFrame:0.0, 0.0, 0.0, 0.0]];
  [(THCustomLayerView *)[(THWAVTransportUI *)self movieUIView] setAutoresizesSubviews:1];
  -[THCustomLayerView setBackgroundColor:](-[THWAVTransportUI movieUIView](self, "movieUIView"), "setBackgroundColor:", [+[TSUColor clearColor](TSUColor "clearColor")]);
  [(THCustomLayerView *)[(THWAVTransportUI *)self movieUIView] setTsdAlpha:0.99];
  [(THCustomLayerView *)[(THWAVTransportUI *)self movieUIView] setOpaque:0];

  [(THWAVTransportUI *)self createMovieUIViewBackground];
}

- (CGRect)frameForOnCanvasUI
{
  [(THWAVTransportUI *)self layoutRect];
  v16 = CGRectIntegral(v15);
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  [(THWAVTransportUI *)self hudExternalPadding];
  if (v7 > 0.0)
  {
    [(THWAVTransportUI *)self hudExternalPadding];
    x = x + v8;
    [(THWAVTransportUI *)self hudExternalPadding];
    width = width + v9 * -2.0;
  }

  v10 = 545.0;
  if (width <= 545.0)
  {
    v10 = width;
  }

  else
  {
    v11 = (width + -545.0) * 0.5;
    x = x + roundf(v11);
  }

  v12 = y + height + -49.0 + -10.0;
  v13 = 49.0;
  v14 = x;
  result.size.height = v13;
  result.size.width = v10;
  result.origin.y = v12;
  result.origin.x = v14;
  return result;
}

- (THCustomLayerView)onCanvasView
{
  if ([(THWAVTransportUI *)self compactUIView])
  {

    return [(THWAVTransportUI *)self compactUIView];
  }

  else
  {

    return [(THWAVTransportUI *)self movieUIView];
  }
}

- (id)onCanvasViews
{
  onCanvasView = [(THWAVTransportUI *)self onCanvasView];

  return [NSArray arrayWithObject:onCanvasView];
}

- (void)reconfigureViewsAndLayout
{
  [(THWAVTransportUI *)self createViewsForConfigurationChange];
  [(THWAVTransportUI *)self configureViewsForConfigurationChange];

  [(THWAVTransportUI *)self i_layout];
}

- (BOOL)isCompact
{
  transportController = [(THWAVTransportUI *)self transportController];

  return [(THWAVTransportController *)transportController isCompact];
}

- (void)compactnessChanged
{
  if ([(THWAVTransportUI *)self supportsCompactUI])
  {

    [(THWAVTransportUI *)self reconfigureViewsAndLayout];
  }
}

- (void)createViewsForConfigurationChange
{
  if ([(THWAVTransportUI *)self wantsPlayButton]&& ![(THWAVTransportUI *)self playButton])
  {
    v3 = [TSKBiggerButton tsdPlatformButtonWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [v3 setTarget:self action:"p_handlePlayButtonPressed:"];
    [v3 setHitBufferTop:10.0 left:10.0 bottom:10.0 right:10.0];
    [v3 setShowsTouchWhenHighlighted:1];
    [objc_msgSend(v3 "imageView")];
    [(THWAVTransportUI *)self setPlayButton:v3];
    [(THCustomLayerView *)[(THWAVTransportUI *)self movieUIView] addSubview:[(THWAVTransportUI *)self playButton]];
  }

  if ([(THWAVTransportUI *)self wantsScrubber]&& ![(THWAVTransportUI *)self scrubber])
  {
    v4 = [[THWDetailSlider alloc] initWithFrame:[(THWAVTransportUI *)self scrubberStyle] style:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(THWDetailSlider *)v4 setDelegate:self];
    [(THWAVTransportUI *)self setScrubber:v4];
    [(THCustomLayerView *)[(THWAVTransportUI *)self movieUIView] addSubview:[(THWAVTransportUI *)self scrubber]];
  }

  if (![(THWAVTransportUI *)self wantsPlayButton]&& [(THWAVTransportUI *)self playButton])
  {
    [(UIButton *)[(THWAVTransportUI *)self playButton] removeFromSuperview];
    [(THWAVTransportUI *)self setPlayButton:0];
  }

  if (![(THWAVTransportUI *)self wantsScrubber]&& [(THWAVTransportUI *)self scrubber])
  {
    [(THWDetailSlider *)[(THWAVTransportUI *)self scrubber] removeFromSuperview];

    [(THWAVTransportUI *)self setScrubber:0];
  }
}

- (void)configureViewsForConfigurationChange
{
  if ([(THWAVTransportUI *)self playButton])
  {
    playButton = [(THWAVTransportUI *)self playButton];
    if ([(THWAVTransportController *)[(THWAVTransportUI *)self transportController] movieIsPlaying])
    {
      imageNameForPauseButton = [(THWAVTransportUI *)self imageNameForPauseButton];
    }

    else
    {
      imageNameForPauseButton = [(THWAVTransportUI *)self imageNameForPlayButton];
    }

    [(UIButton *)playButton setImageNamed:imageNameForPauseButton inBundle:THBundle()];
    playButton2 = [(THWAVTransportUI *)self playButton];
    if ([(THWAVTransportController *)[(THWAVTransportUI *)self transportController] movieIsPlaying])
    {
      imageNameForPauseButtonPressed = [(THWAVTransportUI *)self imageNameForPauseButtonPressed];
    }

    else
    {
      imageNameForPauseButtonPressed = [(THWAVTransportUI *)self imageNameForPlayButtonPressed];
    }

    [(UIButton *)playButton2 setAlternateImageNamed:imageNameForPauseButtonPressed inBundle:THBundle()];
  }

  if ([(THWAVTransportUI *)self scrubber])
  {
    scrubber = [(THWAVTransportUI *)self scrubber];
    [(THWAVTransportController *)[(THWAVTransportUI *)self transportController] duration];
    *&v8 = v8;
    [(THWDetailSlider *)scrubber setDuration:roundf(*&v8)];
    scrubber2 = [(THWAVTransportUI *)self scrubber];
    [(THWAVTransportController *)[(THWAVTransportUI *)self transportController] currentTime];
    *&v10 = v10;
    *&v10 = roundf(*&v10);

    [(THWDetailSlider *)scrubber2 setValue:v10];
  }
}

- (void)i_layout
{
  [(THWAVTransportUI *)self willLayout];
  [(THWAVTransportUI *)self layout];

  [(THWAVTransportUI *)self didLayout];
}

- (void)willLayout
{
  onCanvasView = [(THWAVTransportUI *)self onCanvasView];
  v6 = *&CGAffineTransformIdentity.c;
  v8 = *&CGAffineTransformIdentity.a;
  v7 = v8;
  v9 = v6;
  v10 = *&CGAffineTransformIdentity.tx;
  v5 = v10;
  [(THCustomLayerView *)onCanvasView setTransform:&v8];
  inHUDView = [(THWAVTransportUI *)self inHUDView];
  v8 = v7;
  v9 = v6;
  v10 = v5;
  [(THCustomLayerView *)inHUDView setTransform:&v8];
}

- (void)didLayout
{
  [(THWAVTransportController *)[(THWAVTransportUI *)self transportController] onCanvasScale];
  v3 = *&CGAffineTransformIdentity.c;
  *&v6.a = *&CGAffineTransformIdentity.a;
  *&v6.c = v3;
  *&v6.tx = *&CGAffineTransformIdentity.tx;
  CGAffineTransformScale(&v7, &v6, v4, v4);
  onCanvasView = [(THWAVTransportUI *)self onCanvasView];
  v6 = v7;
  [(THCustomLayerView *)onCanvasView setTransform:&v6];
}

- (void)layout
{
  [(THWAVTransportUI *)self frameForOnCanvasUI];
  [(THCustomLayerView *)[(THWAVTransportUI *)self movieUIView] setFrame:v3, v4, v5, v6];
  [(THCustomLayerView *)[(THWAVTransportUI *)self movieUIView] bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(THWAVTransportUI *)self hudInternalPadding];
  v16 = v15 + v8;
  [(THWAVTransportUI *)self hudInternalPadding];
  v18 = v17;
  if ([(THWAVTransportUI *)self playButton])
  {
    [(THWAVTransportUI *)self widthForPlayButton];
    v20 = v19;
    [(UIButton *)[(THWAVTransportUI *)self playButton] setFrame:v16, v10, v19, v14];
    v16 = v16 + v20 + 12.0;
    [-[UIButton layer](-[THWAVTransportUI playButton](self "playButton")];
  }

  if ([(THWAVTransportUI *)self scrubber]&& (v21 = v8 + v12 - v18 - v16, v21 > 100.0))
  {
    [(THWDetailSlider *)[(THWAVTransportUI *)self scrubber] sizeThatFits:v12, v14];
    v23 = (v14 - v22) * 0.5;
    [(THWDetailSlider *)[(THWAVTransportUI *)self scrubber] setFrame:v16, v10 + floorf(v23) + 2.0, v21, v22];
    [(THWDetailSlider *)[(THWAVTransportUI *)self scrubber] setHidden:0];
    [(THCustomLayerView *)[(THWAVTransportUI *)self movieUIView] frame];
    Width = CGRectGetWidth(v30);
    [(THWAVTransportUI *)self minWidthToShowScrubberStartTime];
    [(THWDetailSlider *)[(THWAVTransportUI *)self scrubber] setHideLeftNumericDisplay:Width < v25];
    [(THCustomLayerView *)[(THWAVTransportUI *)self movieUIView] frame];
    v26 = CGRectGetWidth(v31);
    [(THWAVTransportUI *)self minWidthToShowScrubberEndTime];
    [(THWDetailSlider *)[(THWAVTransportUI *)self scrubber] setHideRightNumericDisplay:v26 < v27];
  }

  else
  {
    [(THWDetailSlider *)[(THWAVTransportUI *)self scrubber] setHidden:1];
  }

  if (![(THWAVTransportUI *)self shouldShowControlsOnCanvas])
  {
    movieUIView = [(THWAVTransportUI *)self movieUIView];

    [(THCustomLayerView *)movieUIView setHidden:1];
  }
}

- (void)durationChanged:(double)changed
{
  scrubber = [(THWAVTransportUI *)self scrubber];
  changedCopy = changed;
  v6 = roundf(changedCopy);

  [(THWDetailSlider *)scrubber setDuration:v6];
}

- (void)timeChanged:(double)changed
{
  scrubber = [(THWAVTransportUI *)self scrubber];
  *&v5 = changed;
  *&v5 = roundf(*&v5);

  [(THWDetailSlider *)scrubber setValue:v5];
}

- (void)configureButtonsForPlaying
{
  [(UIButton *)[(THWAVTransportUI *)self playButton] setImageNamed:[(THWAVTransportUI *)self imageNameForPauseButton] inBundle:THBundle()];
  playButton = [(THWAVTransportUI *)self playButton];
  imageNameForPauseButtonPressed = [(THWAVTransportUI *)self imageNameForPauseButtonPressed];
  v5 = THBundle();

  [(UIButton *)playButton setAlternateImageNamed:imageNameForPauseButtonPressed inBundle:v5];
}

- (void)configureButtonsForPaused
{
  [(UIButton *)[(THWAVTransportUI *)self playButton] setImageNamed:[(THWAVTransportUI *)self imageNameForPlayButton] inBundle:THBundle()];
  playButton = [(THWAVTransportUI *)self playButton];
  imageNameForPlayButtonPressed = [(THWAVTransportUI *)self imageNameForPlayButtonPressed];
  v5 = THBundle();

  [(UIButton *)playButton setAlternateImageNamed:imageNameForPlayButtonPressed inBundle:v5];
}

- (void)rateChanged:(double)changed
{
  if ([(THWAVTransportUI *)self playButton])
  {
    if (+[NSThread isMainThread])
    {
      if (changed == 0.0)
      {

        [(THWAVTransportUI *)self configureButtonsForPaused];
      }

      else
      {

        [(THWAVTransportUI *)self configureButtonsForPlaying];
      }
    }

    else
    {
      +[NSThread mainThread];

      [THWAVTransportUI performSelector:"performSelector:onThread:withObject:waitUntilDone:" onThread:? withObject:? waitUntilDone:?];
    }
  }
}

- (void)mediaDidPlayToEnd
{
  if ([(THWAVTransportUI *)self scrubber])
  {
    scrubber = [(THWAVTransportUI *)self scrubber];

    [(THWDetailSlider *)scrubber setValue:0.0];
  }
}

- (void)toggleHidden
{
  if ([(THWAVTransportUI *)self shouldShowControlsOnCanvas])
  {
    v3 = [(THWAVTransportUI *)self hidden]^ 1;

    [(THWAVTransportUI *)self setHidden:v3];
  }
}

- (BOOL)hidden
{
  movieUIView = [(THWAVTransportUI *)self movieUIView];

  return [(THCustomLayerView *)movieUIView isHidden];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ([(THCustomLayerView *)[(THWAVTransportUI *)self movieUIView] isHidden]!= hidden)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    v6 = &THWAVTransportUIWillHideNotification;
    if (!hiddenCopy)
    {
      v6 = &THWAVTransportUIWillShowNotification;
    }

    [(NSNotificationCenter *)v5 postNotificationName:*v6 object:self];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_169714;
    v9[3] = &unk_45B2C0;
    v9[4] = self;
    v10 = hiddenCopy;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_169760;
    v7[3] = &unk_45DE60;
    v7[4] = self;
    v8 = hiddenCopy;
    [UIView animateWithDuration:v9 animations:v7 completion:0.3];
  }
}

- (BOOL)shouldPlayOnMainCanvasWithSize:(double)size
{
  v4 = TSUPhoneUI() ^ 1;
  if (size >= 150.0)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (BOOL)shouldShowControlsOnCanvas
{
  if (TSUPhoneUI())
  {
    return 0;
  }

  [(THCustomLayerView *)[(THWAVTransportUI *)self movieUIView] frame];
  return v4 >= 150.0;
}

- (void)play
{
  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_1698A0;
  activity_block[3] = &unk_45AE00;
  activity_block[4] = self;
  _os_activity_initiate(&dword_0, "Play", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)pause
{
  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_16994C;
  activity_block[3] = &unk_45AE00;
  activity_block[4] = self;
  _os_activity_initiate(&dword_0, "Pause", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (BOOL)movieIsPlaying
{
  transportController = [(THWAVTransportUI *)self transportController];

  return [(THWAVTransportController *)transportController movieIsPlaying];
}

- (void)togglePlay
{
  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_169A20;
  activity_block[3] = &unk_45AE00;
  activity_block[4] = self;
  _os_activity_initiate(&dword_0, "AVTransport Toggle Play", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)changeCurrentTimeTo:(double)to
{
  transportController = [(THWAVTransportUI *)self transportController];

  [(THWAVTransportController *)transportController changeCurrentTimeTo:to];
}

- (void)detailSlider:(id)slider didChangeValue:(float)value
{
  if ([(THWAVTransportUI *)self scrubber]== slider)
  {

    [(THWAVTransportUI *)self changeCurrentTimeTo:value];
  }
}

- (CGRect)layoutRect
{
  x = self->_layoutRect.origin.x;
  y = self->_layoutRect.origin.y;
  width = self->_layoutRect.size.width;
  height = self->_layoutRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end