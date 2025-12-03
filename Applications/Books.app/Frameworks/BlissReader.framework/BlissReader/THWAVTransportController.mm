@interface THWAVTransportController
+ (id)transportControllerLayoutsForLayouts:(id)layouts;
+ (void)createTransportControllerForLayouts:(id)layouts;
- (BOOL)isCompact;
- (BOOL)isMuted;
- (BOOL)movieIsAtEnd;
- (BOOL)movieIsPlaying;
- (CGRect)frameOfHUDFor:(id)for;
- (THWAudioRep)audioRep;
- (TSKDocumentRoot)documentRoot;
- (double)currentTime;
- (double)duration;
- (double)onCanvasScale;
- (id)buttonControl:(id)control imageForState:(int)state highlighted:(BOOL)highlighted;
- (id)computeLayoutGeometryForTransportLayout:(id)layout;
- (id)controlLayouts;
- (id)layoutGeometryForLayout:(id)layout;
- (id)movieRep;
- (id)playButtonRep;
- (int)controlStyle;
- (void)buttonControl:(id)control didUpdateLayer:(id)layer;
- (void)buttonControlWasPressed:(id)pressed;
- (void)changeCurrentTimeTo:(double)to;
- (void)control:(id)control repWasAdded:(id)added;
- (void)createTransportUI;
- (void)dealloc;
- (void)durationChanged:(double)changed;
- (void)exitExpanded;
- (void)hideTransportHUDFor:(id)for;
- (void)mediaDidPlayToEnd;
- (void)mediaWasPressed;
- (void)mediaWillBeRemoved;
- (void)moviePlayedToEnd;
- (void)p_cancelExitExpandedTimer;
- (void)pause;
- (void)play;
- (void)rateChanged:(double)changed;
- (void)showTransportHUDFor:(id)for;
- (void)stop;
- (void)timeChanged:(double)changed;
- (void)toggleMute;
- (void)togglePlayPause;
- (void)viewScaleDidChange;
- (void)willExitExpandedShouldPause:(BOOL)pause;
@end

@implementation THWAVTransportController

+ (void)createTransportControllerForLayouts:(id)layouts
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [layouts countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(layouts);
        }

        objc_opt_class();
        v8 = TSUDynamicCast();
        if (v8)
        {
          v9 = v8;
          if (![v8 mediaListener])
          {
            v10 = [+[THWAVController sharedController](THWAVController "sharedController")];
            [v10 setMovieLayout:v9];
            [v9 setMediaListener:v10];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [layouts countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

+ (id)transportControllerLayoutsForLayouts:(id)layouts
{
  v4 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [layouts countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(layouts);
        }

        objc_opt_class();
        v9 = TSUDynamicCast();
        if (v9)
        {
          v10 = v9;
          if (![v9 mediaListener])
          {
            v11 = [+[THWAVController sharedController](THWAVController "sharedController")];
            [v11 setMovieLayout:v10];
            [v10 setMediaListener:v11];
          }

          objc_opt_class();
          [v10 mediaListener];
          v12 = TSUDynamicCast();
          objc_opt_class();
          [v10 info];
          v13 = TSUDynamicCast();
          if ((![v13 isAudioOnly] || objc_msgSend(v13, "isAudioOnly") && objc_msgSend(v13, "controlStyle") == 1 && !objc_msgSend(v13, "posterImageData")) && !objc_msgSend(v12, "transportLayout"))
          {
            if ([v13 isAudioOnly] & 1) != 0 || (objc_msgSend(v10, "isExpanded") & 1) != 0 || objc_msgSend(v13, "autoplayConfig") && (objc_msgSend(objc_msgSend(v13, "autoplayConfig"), "enabled"))
            {
              v14 = 0;
            }

            else
            {
              v14 = [(THWControlLayout *)[THWButtonControlLayout alloc] initWithTag:0];
              [(THWButtonControlLayout *)v14 invalidateFrame];
            }

            v15 = objc_alloc_init(THWAVTransportLayout);
            [(THWAVTransportLayout *)v15 invalidateFrame];
            [v12 setPlayButtonLayout:v14];
            [v12 setTransportLayout:v15];
            [(THWAVTransportLayout *)v15 setTransportController:v12];
          }

          [v4 addObjectsFromArray:{objc_msgSend(objc_msgSend(v10, "mediaListener"), "controlLayouts")}];
        }

        ++v8;
      }

      while (v6 != v8);
      v16 = [layouts countByEnumeratingWithState:&v18 objects:v22 count:16];
      v6 = v16;
    }

    while (v16);
  }

  return v4;
}

- (void)dealloc
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"p_hideUI:" object:self];
  [(THWAVTransportController *)self p_cancelExitExpandedTimer];

  [(THWAVTransportLayout *)self->_transportLayout setTransportController:0];
  v3.receiver = self;
  v3.super_class = THWAVTransportController;
  [(THWAVTransportController *)&v3 dealloc];
}

- (BOOL)isCompact
{
  objc_opt_class();
  [objc_msgSend(-[THWAVTransportLayout layoutController](-[THWAVTransportController transportLayout](self "transportLayout")];
  v3 = TSUDynamicCast();
  if ([v3 isCompactWidth])
  {
    return 1;
  }

  return [v3 isCompactHeight];
}

- (double)onCanvasScale
{
  objc_opt_class();
  [objc_msgSend(-[THWAVTransportLayout layoutController](-[THWAVTransportController transportLayout](self "transportLayout")];
  v3 = TSUDynamicCast();
  if (!v3)
  {
    return 1.0;
  }

  [v3 viewScale];
  return result;
}

- (void)showTransportHUDFor:(id)for
{
  objc_opt_class();
  [objc_msgSend(-[THWAVTransportLayout layoutController](-[THWAVTransportController transportLayout](self "transportLayout")];
  -[THWAVTransportController setCurrentHudHost:](self, "setCurrentHudHost:", [objc_msgSend(objc_msgSend(TSUDynamicCast() "layerHost")]);
  currentHudHost = [(THWAVTransportController *)self currentHudHost];

  [(THHUDHosting *)currentHudHost showHUDForVendor:for];
}

- (void)hideTransportHUDFor:(id)for
{
  currentHudHost = [(THWAVTransportController *)self currentHudHost];

  [(THHUDHosting *)currentHudHost hideHUDForVendor:for];
}

- (CGRect)frameOfHUDFor:(id)for
{
  objc_opt_class();
  [objc_msgSend(-[THWAVTransportLayout layoutController](-[THWAVTransportController transportLayout](self "transportLayout")];
  v5 = [objc_msgSend(objc_msgSend(TSUDynamicCast() "layerHost")];

  [v5 frameForHUDFromVendor:for];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)viewScaleDidChange
{
  isCompact = [(THWAVTransportController *)self isCompact];
  if (isCompact != [(THWAVTransportController *)self isCurrentlyCompact])
  {
    [(THWAVTransportController *)self setIsCurrentlyCompact:isCompact];
    transportUI = [(THWAVTransportController *)self transportUI];

    [(THWAVTransportUI *)transportUI compactnessChanged];
  }
}

- (id)controlLayouts
{
  v3 = +[NSMutableArray array];
  if ([(THWAVTransportController *)self playButtonLayout])
  {
    [v3 addObject:{-[THWAVTransportController playButtonLayout](self, "playButtonLayout")}];
  }

  if ([(THWAVTransportController *)self transportLayout])
  {
    [v3 addObject:{-[THWAVTransportController transportLayout](self, "transportLayout")}];
  }

  return v3;
}

- (void)control:(id)control repWasAdded:(id)added
{
  if (![control tag])
  {
    objc_opt_class();
    v5 = TSUDynamicCast();

    [v5 setDelegate:self];
  }
}

- (void)createTransportUI
{
  if (!self->_transportUI)
  {
    if ([-[THWMovieLayout movieInfo](-[THWAVTransportController movieLayout](self "movieLayout")])
    {
      v3 = [(THWAVTransportUI *)[THWAVAudioUI alloc] initWithTransportController:self];

      [(THWAVTransportController *)self setTransportUI:v3];
    }

    else
    {
      v4 = +[TSUAssertionHandler currentHandler];
      v5 = [NSString stringWithUTF8String:"[THWAVTransportController createTransportUI]"];
      v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Movie/THWAVTransportController.m"];

      [v4 handleFailureInFunction:v5 file:v6 lineNumber:248 description:@"Should never be asked to create a transport UI in this case"];
    }
  }
}

- (id)playButtonRep
{
  objc_opt_class();
  [objc_msgSend(-[THWButtonControlLayout layoutController](-[THWAVTransportController playButtonLayout](self "playButtonLayout")];

  return TSUDynamicCast();
}

- (THWAudioRep)audioRep
{
  objc_opt_class();
  [objc_msgSend(-[THWMovieLayout layoutController](-[THWAVTransportController movieLayout](self "movieLayout")];

  return TSUDynamicCast();
}

- (id)movieRep
{
  objc_opt_class();
  [objc_msgSend(-[THWMovieLayout layoutController](-[THWAVTransportController movieLayout](self "movieLayout")];

  return TSUDynamicCast();
}

- (TSKDocumentRoot)documentRoot
{
  result = [(THWAVTransportController *)self audioRep];
  if (result)
  {
    interactiveCanvasController = [(THWAudioRep *)[(THWAVTransportController *)self audioRep] interactiveCanvasController];

    return [interactiveCanvasController documentRoot];
  }

  return result;
}

- (id)computeLayoutGeometryForTransportLayout:(id)layout
{
  [(THWMovieLayout *)[(THWAVTransportController *)self movieLayout] validate];
  [-[THWMovieLayout geometry](-[THWAVTransportController movieLayout](self "movieLayout")];
  TSDRectWithSize();
  v8 = [[TSDLayoutGeometry alloc] initWithFrame:{v4, v5, v6, v7}];

  return v8;
}

- (id)layoutGeometryForLayout:(id)layout
{
  v4 = TSUProtocolCast();
  if (!v4 || [v4 tag])
  {
    return 0;
  }

  [-[THWMovieLayout geometry](-[THWAVTransportController movieLayout](self "movieLayout")];
  TSDRectWithSize();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if ([(THWAVTransportController *)self shouldShowPlayButton])
  {
    v7 = v7 + (v11 + -86.0) * 0.5;
    v9 = v9 + (v13 + -86.0) * 0.5;
    v14 = 86.0;
  }

  else
  {
    v14 = 0.1;
  }

  v15 = [[TSDLayoutGeometry alloc] initWithFrame:{v7, v9, v14, v14}];

  return v15;
}

- (id)buttonControl:(id)control imageForState:(int)state highlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v7 = THBundle();
  v8 = @"ib_media_btn_small_pause-N";
  if (highlightedCopy)
  {
    v8 = @"ib_media_btn_small_pause-P";
  }

  v9 = @"ib_media_movie_play-N";
  if (highlightedCopy)
  {
    v9 = @"ib_media_movie_play-P";
  }

  if (state)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  return [TSUImage imageNamed:v10 inBundle:v7];
}

- (void)buttonControlWasPressed:(id)pressed
{
  layout = [pressed layout];
  if (![layout tag])
  {
    if ([pressed state])
    {
      [(THWAVTransportController *)self pause];
    }

    else
    {
      [(THWAVTransportController *)self play];
      [(THWAVTransportController *)self duration];
      [(THWAVTransportController *)self durationChanged:?];
    }

    [layout invalidateFrame];
    movieLayout = [(THWAVTransportController *)self movieLayout];

    [(THWMovieLayout *)movieLayout invalidate];
  }
}

- (void)buttonControl:(id)control didUpdateLayer:(id)layer
{
  [layer setMinificationFilter:kCAFilterTrilinear];

  [layer setMagnificationFilter:kCAFilterTrilinear];
}

- (void)timeChanged:(double)changed
{
  transportUI = [(THWAVTransportController *)self transportUI];

  [(THWAVTransportUI *)transportUI timeChanged:changed];
}

- (void)durationChanged:(double)changed
{
  transportUI = [(THWAVTransportController *)self transportUI];

  [(THWAVTransportUI *)transportUI durationChanged:changed];
}

- (void)rateChanged:(double)changed
{
  [(THWAVTransportController *)self configurePlayButtonForRate:?];
  [(THWAVTransportUI *)[(THWAVTransportController *)self transportUI] rateChanged:changed];
  if ([(THWAVTransportController *)self isStopped])
  {
    [(THWButtonControlLayout *)[(THWAVTransportController *)self playButtonLayout] invalidateFrame];
  }

  if (changed == 0.0 && [(THWAVTransportController *)self movieIsAtEnd])
  {

    [(THWAVTransportController *)self moviePlayedToEnd];
  }
}

- (void)mediaDidPlayToEnd
{
  transportUI = [(THWAVTransportController *)self transportUI];

  [(THWAVTransportUI *)transportUI mediaDidPlayToEnd];
}

- (void)mediaWillBeRemoved
{
  [(THWAVTransportController *)self p_cancelExitExpandedTimer];
  [+[THWAVController sharedController](THWAVController "sharedController")];

  [(THWAVTransportController *)self setDelegate:0];
}

- (void)mediaWasPressed
{
  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_1D6D34;
  activity_block[3] = &unk_45AE00;
  activity_block[4] = self;
  _os_activity_initiate(&dword_0, "Media Pressed", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)willExitExpandedShouldPause:(BOOL)pause
{
  pauseCopy = pause;
  [(THWAVTransportController *)self p_cancelExitExpandedTimer];
  [objc_msgSend(-[THWMovieLayout info](-[THWAVTransportController movieLayout](self "movieLayout")];
  if ([(THWAVTransportUI *)[(THWAVTransportController *)self transportUI] shouldPlayOnMainCanvasWithSize:v5])
  {
    if (pauseCopy)
    {

      [(THWAVTransportController *)self pause];
    }
  }

  else
  {

    [(THWAVTransportController *)self stop];
  }
}

- (void)moviePlayedToEnd
{
  if ([(THWAVTransportController *)self delegate]&& ![(THWAVTransportController *)self exitingExpanded])
  {

    [(THWAVTransportController *)self p_cancelExitExpandedTimer];
  }
}

- (BOOL)movieIsAtEnd
{
  [(THWAVTransportController *)self duration];
  v4 = v3;
  [(THWAVTransportController *)self currentTime];
  return v4 - v5 < 0.2;
}

- (double)duration
{
  [-[THWMovieLayout movieInfo](-[THWAVTransportController movieLayout](self "movieLayout")];
  v4 = v3;
  [-[THWMovieLayout movieInfo](-[THWAVTransportController movieLayout](self "movieLayout")];
  return v4 - v5;
}

- (double)currentTime
{
  if (![(THWAVTransportController *)self audioRep])
  {
    return 0.0;
  }

  audioRep = [(THWAVTransportController *)self audioRep];

  [(THWAudioRep *)audioRep currentTime];
  return result;
}

- (BOOL)movieIsPlaying
{
  audioRep = [(THWAVTransportController *)self audioRep];
  if (audioRep)
  {
    audioRep2 = [(THWAVTransportController *)self audioRep];

    LOBYTE(audioRep) = [(THWAudioRep *)audioRep2 isPlaying];
  }

  return audioRep;
}

- (void)toggleMute
{
  isMuted = [(THWAVTransportController *)self isMuted];
  if ([(THWAVTransportController *)self audioRep])
  {
    audioRep = [(THWAVTransportController *)self audioRep];

    [(THWAudioRep *)audioRep setMuted:isMuted ^ 1];
  }
}

- (BOOL)isMuted
{
  audioRep = [(THWAVTransportController *)self audioRep];
  if (audioRep)
  {
    audioRep2 = [(THWAVTransportController *)self audioRep];

    LOBYTE(audioRep) = [(THWAudioRep *)audioRep2 isMuted];
  }

  return audioRep;
}

- (void)play
{
  if ([(THWAVTransportController *)self audioRep])
  {
    activity_block[0] = _NSConcreteStackBlock;
    activity_block[1] = 3221225472;
    activity_block[2] = sub_1D7120;
    activity_block[3] = &unk_45AE00;
    activity_block[4] = self;
    _os_activity_initiate(&dword_0, "Audio Rep Play", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }
}

- (void)pause
{
  if ([(THWAVTransportController *)self audioRep])
  {
    activity_block[0] = _NSConcreteStackBlock;
    activity_block[1] = 3221225472;
    activity_block[2] = sub_1D71E0;
    activity_block[3] = &unk_45AE00;
    activity_block[4] = self;
    _os_activity_initiate(&dword_0, "Audio Rep Pause", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }
}

- (void)stop
{
  if ([(THWAVTransportController *)self audioRep])
  {
    activity_block[0] = _NSConcreteStackBlock;
    activity_block[1] = 3221225472;
    activity_block[2] = sub_1D7318;
    activity_block[3] = &unk_45AE00;
    activity_block[4] = self;
    _os_activity_initiate(&dword_0, "Audio Rep Stop", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }

  if ([(THWAVTransportController *)self movieRep])
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1D7344;
    v3[3] = &unk_45AE00;
    v3[4] = self;
    _os_activity_initiate(&dword_0, "Movie Rep Stop", OS_ACTIVITY_FLAG_DEFAULT, v3);
  }

  [(THWAVTransportUI *)[(THWAVTransportController *)self transportUI] mediaDidStop];
}

- (void)togglePlayPause
{
  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_1D73F0;
  activity_block[3] = &unk_45AE00;
  activity_block[4] = self;
  _os_activity_initiate(&dword_0, "Toggle Play Pause", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)changeCurrentTimeTo:(double)to
{
  if ([(THWAVTransportController *)self audioRep])
  {
    audioRep = [(THWAVTransportController *)self audioRep];

    [(THWAudioRep *)audioRep changeCurrentTimeTo:to];
  }
}

- (void)exitExpanded
{
  [(THWAVTransportController *)self setExitingExpanded:1];
  if (![(THWAVTransportController *)self delegate])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THWAVTransportControllerDelegate *)[(THWAVTransportController *)self delegate] exitAVPresentation:self];
  [(THWAVTransportController *)self p_cancelExitExpandedTimer];
  if (![(THWMovieLayout *)[(THWAVTransportController *)self movieLayout] isIntroMedia])
  {
    [(THWAVTransportController *)self setDelegate:0];
  }

  [(THWAVTransportController *)self setExitingExpanded:0];
}

- (int)controlStyle
{
  movieInfo = [(THWMovieLayout *)[(THWAVTransportController *)self movieLayout] movieInfo];

  return [movieInfo controlStyle];
}

- (void)p_cancelExitExpandedTimer
{
  [(NSTimer *)[(THWAVTransportController *)self exitExpandedTimer] invalidate];

  [(THWAVTransportController *)self setExitExpandedTimer:0];
}

@end