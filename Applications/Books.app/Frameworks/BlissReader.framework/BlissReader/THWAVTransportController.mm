@interface THWAVTransportController
+ (id)transportControllerLayoutsForLayouts:(id)a3;
+ (void)createTransportControllerForLayouts:(id)a3;
- (BOOL)isCompact;
- (BOOL)isMuted;
- (BOOL)movieIsAtEnd;
- (BOOL)movieIsPlaying;
- (CGRect)frameOfHUDFor:(id)a3;
- (THWAudioRep)audioRep;
- (TSKDocumentRoot)documentRoot;
- (double)currentTime;
- (double)duration;
- (double)onCanvasScale;
- (id)buttonControl:(id)a3 imageForState:(int)a4 highlighted:(BOOL)a5;
- (id)computeLayoutGeometryForTransportLayout:(id)a3;
- (id)controlLayouts;
- (id)layoutGeometryForLayout:(id)a3;
- (id)movieRep;
- (id)playButtonRep;
- (int)controlStyle;
- (void)buttonControl:(id)a3 didUpdateLayer:(id)a4;
- (void)buttonControlWasPressed:(id)a3;
- (void)changeCurrentTimeTo:(double)a3;
- (void)control:(id)a3 repWasAdded:(id)a4;
- (void)createTransportUI;
- (void)dealloc;
- (void)durationChanged:(double)a3;
- (void)exitExpanded;
- (void)hideTransportHUDFor:(id)a3;
- (void)mediaDidPlayToEnd;
- (void)mediaWasPressed;
- (void)mediaWillBeRemoved;
- (void)moviePlayedToEnd;
- (void)p_cancelExitExpandedTimer;
- (void)pause;
- (void)play;
- (void)rateChanged:(double)a3;
- (void)showTransportHUDFor:(id)a3;
- (void)stop;
- (void)timeChanged:(double)a3;
- (void)toggleMute;
- (void)togglePlayPause;
- (void)viewScaleDidChange;
- (void)willExitExpandedShouldPause:(BOOL)a3;
@end

@implementation THWAVTransportController

+ (void)createTransportControllerForLayouts:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(a3);
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
      v5 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

+ (id)transportControllerLayoutsForLayouts:(id)a3
{
  v4 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(a3);
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
      v16 = [a3 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (void)showTransportHUDFor:(id)a3
{
  objc_opt_class();
  [objc_msgSend(-[THWAVTransportLayout layoutController](-[THWAVTransportController transportLayout](self "transportLayout")];
  -[THWAVTransportController setCurrentHudHost:](self, "setCurrentHudHost:", [objc_msgSend(objc_msgSend(TSUDynamicCast() "layerHost")]);
  v5 = [(THWAVTransportController *)self currentHudHost];

  [(THHUDHosting *)v5 showHUDForVendor:a3];
}

- (void)hideTransportHUDFor:(id)a3
{
  v4 = [(THWAVTransportController *)self currentHudHost];

  [(THHUDHosting *)v4 hideHUDForVendor:a3];
}

- (CGRect)frameOfHUDFor:(id)a3
{
  objc_opt_class();
  [objc_msgSend(-[THWAVTransportLayout layoutController](-[THWAVTransportController transportLayout](self "transportLayout")];
  v5 = [objc_msgSend(objc_msgSend(TSUDynamicCast() "layerHost")];

  [v5 frameForHUDFromVendor:a3];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)viewScaleDidChange
{
  v3 = [(THWAVTransportController *)self isCompact];
  if (v3 != [(THWAVTransportController *)self isCurrentlyCompact])
  {
    [(THWAVTransportController *)self setIsCurrentlyCompact:v3];
    v4 = [(THWAVTransportController *)self transportUI];

    [(THWAVTransportUI *)v4 compactnessChanged];
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

- (void)control:(id)a3 repWasAdded:(id)a4
{
  if (![a3 tag])
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
    v4 = [(THWAudioRep *)[(THWAVTransportController *)self audioRep] interactiveCanvasController];

    return [v4 documentRoot];
  }

  return result;
}

- (id)computeLayoutGeometryForTransportLayout:(id)a3
{
  [(THWMovieLayout *)[(THWAVTransportController *)self movieLayout] validate];
  [-[THWMovieLayout geometry](-[THWAVTransportController movieLayout](self "movieLayout")];
  TSDRectWithSize();
  v8 = [[TSDLayoutGeometry alloc] initWithFrame:{v4, v5, v6, v7}];

  return v8;
}

- (id)layoutGeometryForLayout:(id)a3
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

- (id)buttonControl:(id)a3 imageForState:(int)a4 highlighted:(BOOL)a5
{
  v5 = a5;
  v7 = THBundle();
  v8 = @"ib_media_btn_small_pause-N";
  if (v5)
  {
    v8 = @"ib_media_btn_small_pause-P";
  }

  v9 = @"ib_media_movie_play-N";
  if (v5)
  {
    v9 = @"ib_media_movie_play-P";
  }

  if (a4)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  return [TSUImage imageNamed:v10 inBundle:v7];
}

- (void)buttonControlWasPressed:(id)a3
{
  v5 = [a3 layout];
  if (![v5 tag])
  {
    if ([a3 state])
    {
      [(THWAVTransportController *)self pause];
    }

    else
    {
      [(THWAVTransportController *)self play];
      [(THWAVTransportController *)self duration];
      [(THWAVTransportController *)self durationChanged:?];
    }

    [v5 invalidateFrame];
    v6 = [(THWAVTransportController *)self movieLayout];

    [(THWMovieLayout *)v6 invalidate];
  }
}

- (void)buttonControl:(id)a3 didUpdateLayer:(id)a4
{
  [a4 setMinificationFilter:kCAFilterTrilinear];

  [a4 setMagnificationFilter:kCAFilterTrilinear];
}

- (void)timeChanged:(double)a3
{
  v4 = [(THWAVTransportController *)self transportUI];

  [(THWAVTransportUI *)v4 timeChanged:a3];
}

- (void)durationChanged:(double)a3
{
  v4 = [(THWAVTransportController *)self transportUI];

  [(THWAVTransportUI *)v4 durationChanged:a3];
}

- (void)rateChanged:(double)a3
{
  [(THWAVTransportController *)self configurePlayButtonForRate:?];
  [(THWAVTransportUI *)[(THWAVTransportController *)self transportUI] rateChanged:a3];
  if ([(THWAVTransportController *)self isStopped])
  {
    [(THWButtonControlLayout *)[(THWAVTransportController *)self playButtonLayout] invalidateFrame];
  }

  if (a3 == 0.0 && [(THWAVTransportController *)self movieIsAtEnd])
  {

    [(THWAVTransportController *)self moviePlayedToEnd];
  }
}

- (void)mediaDidPlayToEnd
{
  v2 = [(THWAVTransportController *)self transportUI];

  [(THWAVTransportUI *)v2 mediaDidPlayToEnd];
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

- (void)willExitExpandedShouldPause:(BOOL)a3
{
  v3 = a3;
  [(THWAVTransportController *)self p_cancelExitExpandedTimer];
  [objc_msgSend(-[THWMovieLayout info](-[THWAVTransportController movieLayout](self "movieLayout")];
  if ([(THWAVTransportUI *)[(THWAVTransportController *)self transportUI] shouldPlayOnMainCanvasWithSize:v5])
  {
    if (v3)
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

  v3 = [(THWAVTransportController *)self audioRep];

  [(THWAudioRep *)v3 currentTime];
  return result;
}

- (BOOL)movieIsPlaying
{
  v3 = [(THWAVTransportController *)self audioRep];
  if (v3)
  {
    v4 = [(THWAVTransportController *)self audioRep];

    LOBYTE(v3) = [(THWAudioRep *)v4 isPlaying];
  }

  return v3;
}

- (void)toggleMute
{
  v3 = [(THWAVTransportController *)self isMuted];
  if ([(THWAVTransportController *)self audioRep])
  {
    v4 = [(THWAVTransportController *)self audioRep];

    [(THWAudioRep *)v4 setMuted:v3 ^ 1];
  }
}

- (BOOL)isMuted
{
  v3 = [(THWAVTransportController *)self audioRep];
  if (v3)
  {
    v4 = [(THWAVTransportController *)self audioRep];

    LOBYTE(v3) = [(THWAudioRep *)v4 isMuted];
  }

  return v3;
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

- (void)changeCurrentTimeTo:(double)a3
{
  if ([(THWAVTransportController *)self audioRep])
  {
    v5 = [(THWAVTransportController *)self audioRep];

    [(THWAudioRep *)v5 changeCurrentTimeTo:a3];
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
  v2 = [(THWMovieLayout *)[(THWAVTransportController *)self movieLayout] movieInfo];

  return [v2 controlStyle];
}

- (void)p_cancelExitExpandedTimer
{
  [(NSTimer *)[(THWAVTransportController *)self exitExpandedTimer] invalidate];

  [(THWAVTransportController *)self setExitExpandedTimer:0];
}

@end