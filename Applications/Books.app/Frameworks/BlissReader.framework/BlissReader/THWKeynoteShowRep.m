@interface THWKeynoteShowRep
- (BOOL)canHandleGesture:(id)a3;
- (BOOL)handleGesture:(id)a3;
- (BOOL)kpfPlayer:(id)a3 handleURL:(id)a4;
- (NSArray)supportedGestureKinds;
- (THWKeynoteShowRep)initWithLayout:(id)a3 canvas:(id)a4;
- (id)p_documentNavigatorFromNotification:(id)a3;
- (void)addAdditionalChildLayersToArray:(id)a3;
- (void)dealloc;
- (void)handleNotificationVantageDidChange:(id)a3;
- (void)handleNotificationVantageWillChange:(id)a3;
- (void)p_handleSwipeGesture:(id)a3;
- (void)playPreparedShow;
- (void)replaceContentsFromRep:(id)a3;
- (void)stopShow;
- (void)updateFromLayout;
- (void)wasAddedToParent;
- (void)willBeRemoved;
- (void)willBeRemovedFromParent;
- (void)willReplaceContentsFromRep:(id)a3;
@end

@implementation THWKeynoteShowRep

- (THWKeynoteShowRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v7.receiver = self;
  v7.super_class = THWKeynoteShowRep;
  v4 = [(THWKeynoteShowRep *)&v7 initWithLayout:a3 canvas:a4];
  v5 = v4;
  if (v4)
  {
    v4->_ownsShow = 1;
    v4->_currentAbsolutePageIndex = 0x7FFFFFFFFFFFFFFFLL;
    -[THWKeynoteShowRep setSwipeLeftGR:](v4, "setSwipeLeftGR:", [[UISwipeGestureRecognizer alloc] initWithTarget:v4 action:"p_handleSwipeGesture:"]);
    [(UISwipeGestureRecognizer *)[(THWKeynoteShowRep *)v5 swipeLeftGR] setDirection:2];
    [objc_msgSend(-[THWKeynoteShowRep interactiveCanvasController](v5 "interactiveCanvasController")];
    -[THWKeynoteShowRep setSwipeRightGR:](v5, "setSwipeRightGR:", [[UISwipeGestureRecognizer alloc] initWithTarget:v5 action:"p_handleSwipeGesture:"]);
    [(UISwipeGestureRecognizer *)[(THWKeynoteShowRep *)v5 swipeRightGR] setDirection:1];
    [objc_msgSend(-[THWKeynoteShowRep interactiveCanvasController](v5 "interactiveCanvasController")];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v5 name:"handleNotificationVantageWillChange:" object:@"THVantageWillChangeNotification", 0];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v5 name:"handleNotificationVantageDidChange:" object:@"THVantageDidChangeNotification", 0];
  }

  return v5;
}

- (void)dealloc
{
  [(THWKeynoteShowRep *)self setSwipeLeftGR:0];
  [(THWKeynoteShowRep *)self setSwipeRightGR:0];
  v3.receiver = self;
  v3.super_class = THWKeynoteShowRep;
  [(THWKeynoteShowRep *)&v3 dealloc];
}

- (NSArray)supportedGestureKinds
{
  if (TSUSupportsTextInteraction())
  {
    v5 = TSWPImmediatePress;
    v2 = &v5;
  }

  else
  {
    v4 = TSWPImmediateSingleTap;
    v2 = &v4;
  }

  return [NSArray arrayWithObjects:v2 count:1];
}

- (void)playPreparedShow
{
  if ([(KPFPlayerControllerProtocol *)[(THWKeynoteShowRep *)self kpfPlayer] isTransitioningToStop])
  {
    [(KPFPlayerControllerProtocol *)[(THWKeynoteShowRep *)self kpfPlayer] prepareWithEndShowHandler:0];
  }

  [(KPFPlayerControllerProtocol *)[(THWKeynoteShowRep *)self kpfPlayer] playPreparedShow];
  v3 = [(THWKeynoteShowRep *)self currentAbsolutePageIndex];

  [(THWKeynoteShowRep *)self setPlayingOnAbsolutePageIndex:v3];
}

- (void)stopShow
{
  v2 = [(THWKeynoteShowRep *)self kpfPlayer];

  [(KPFPlayerControllerProtocol *)v2 endshow];
}

- (void)wasAddedToParent
{
  v3.receiver = self;
  v3.super_class = THWKeynoteShowRep;
  [(THWKeynoteShowRep *)&v3 wasAddedToParent];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:"p_keynoteShowDidUpdate:" object:@"kTSWTransportControlCloneDidUpdateNotification", 0];
}

- (void)willBeRemovedFromParent
{
  v3.receiver = self;
  v3.super_class = THWKeynoteShowRep;
  [(THWKeynoteShowRep *)&v3 willBeRemovedFromParent];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:@"kTSWTransportControlCloneDidUpdateNotification", 0];
}

- (void)willBeRemoved
{
  if (self->_ownsShow)
  {
    [(KPFPlayerControllerProtocol *)self->_kpfPlayer endshow];
    [(KPFPlayerControllerProtocol *)self->_kpfPlayer tearDownShow];
  }

  [objc_msgSend(-[THWKeynoteShowRep interactiveCanvasController](self "interactiveCanvasController")];
  [objc_msgSend(-[THWKeynoteShowRep interactiveCanvasController](self "interactiveCanvasController")];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];
  v3.receiver = self;
  v3.super_class = THWKeynoteShowRep;
  [(THWKeynoteShowRep *)&v3 willBeRemoved];
}

- (void)updateFromLayout
{
  v4.receiver = self;
  v4.super_class = THWKeynoteShowRep;
  [(THWKeynoteShowRep *)&v4 updateFromLayout];
  if (self->_ownsShow && !self->_kpfPlayer && [-[THWKeynoteShowRep info](self "info")])
  {
    self->_showLayer = objc_alloc_init(CALayer);
    [(CALayer *)self->_showLayer setDelegate:+[THNoAnimationLayerDelegate sharedInstance]];
    [-[THWKeynoteShowRep layout](self "layout")];
    TSDRectWithSize();
    [(CALayer *)self->_showLayer setBounds:?];
    [+[UIScreen mainScreen](UIScreen scale];
    [(CALayer *)self->_showLayer setContentsScale:?];
    v3 = +[KPFPlayer createPlayerWithKPFDocument:bundle:layer:](KPFPlayer, "createPlayerWithKPFDocument:bundle:layer:", [-[THWKeynoteShowRep layout](self "layout")], +[NSBundle bundleWithURL:](NSBundle, "bundleWithURL:", objc_msgSend(-[THWKeynoteShowRep info](self, "info"), "sourceURL")), self->_showLayer);
    self->_kpfPlayer = v3;
    [(KPFPlayerControllerProtocol *)v3 prepareWithEndShowHandler:0];
    [(THWKeynoteShowRep *)self kpfPlayer];
    if (objc_opt_respondsToSelector())
    {
      [(KPFPlayerControllerProtocol *)[(THWKeynoteShowRep *)self kpfPlayer] setKpfPlayerControllerDelegate:self];
    }
  }
}

- (void)willReplaceContentsFromRep:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    if (([v4 ownsShow] & 1) == 0)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    [-[THWKeynoteShowRep layout](self "layout")];
    -[THWKeynoteShowRep setKpfPlayer:](self, "setKpfPlayer:", [v5 kpfPlayer]);
    [(THWKeynoteShowRep *)self kpfPlayer];
    if (objc_opt_respondsToSelector())
    {
      [(KPFPlayerControllerProtocol *)[(THWKeynoteShowRep *)self kpfPlayer] setKpfPlayerControllerDelegate:self];
    }

    [(THWKeynoteShowRep *)self setOwnsShow:0];
  }
}

- (void)replaceContentsFromRep:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    if (![v4 ownsShow] || -[THWKeynoteShowRep ownsShow](self, "ownsShow"))
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    -[THWKeynoteShowRep setShowLayer:](self, "setShowLayer:", [v5 showLayer]);
    [-[THWKeynoteShowRep canvas](self "canvas")];
    [v5 setOwnsShow:0];

    [(THWKeynoteShowRep *)self setOwnsShow:1];
  }
}

- (void)addAdditionalChildLayersToArray:(id)a3
{
  if (self->_ownsShow)
  {
    v25 = v10;
    v26 = v9;
    v27 = v8;
    v28 = v7;
    v29 = v6;
    v30 = v5;
    v31 = v3;
    v32 = v4;
    if (self->_showLayer)
    {
      [-[THWKeynoteShowRep layout](self "layout")];
      TSDRectWithSize();
      [(THWKeynoteShowRep *)self convertNaturalRectToLayerRelative:?];
      v14 = v13;
      v16 = v15;
      [(CALayer *)self->_showLayer bounds];
      v19 = THScaleNeededToFitSizeInSize(v17, v18, v14, v16);
      +[CATransaction begin];
      [CATransaction setDisableActions:1];
      TSDCenterOfRect();
      [(CALayer *)[(THWKeynoteShowRep *)self showLayer] setPosition:v20, v21];
      CATransform3DMakeScale(&v24, v19, v19, 1.0);
      v22 = [(THWKeynoteShowRep *)self showLayer];
      v23 = v24;
      [(CALayer *)v22 setTransform:&v23];
      +[CATransaction commit];
      [a3 addObject:{-[THWKeynoteShowRep showLayer](self, "showLayer")}];
      if ([(KPFPlayerControllerProtocol *)[(THWKeynoteShowRep *)self kpfPlayer] isTransitioningToStop])
      {
        [(KPFPlayerControllerProtocol *)[(THWKeynoteShowRep *)self kpfPlayer] prepareWithEndShowHandler:0];
      }
    }
  }
}

- (BOOL)canHandleGesture:(id)a3
{
  if (self->_ownsShow)
  {
    [a3 boundsLocationForICC:{-[THWKeynoteShowRep interactiveCanvasController](self, "interactiveCanvasController")}];
    -[CALayer convertPoint:fromLayer:](self->_showLayer, "convertPoint:fromLayer:", [objc_msgSend(-[THWKeynoteShowRep interactiveCanvasController](self "interactiveCanvasController")], v5, v6);
    v8 = v7;
    v10 = v9;
    [(CALayer *)self->_showLayer bounds];
    v17.x = v8;
    v17.y = v10;
    v11 = CGRectContainsPoint(v18, v17);
    if (v11)
    {
      LOBYTE(v11) = TSUSupportsTextInteraction() && (v12 = [a3 gestureKind], v12 == TSWPImmediatePress) || (v13 = objc_msgSend(a3, "gestureKind"), v13 == TSWPImmediateSingleTap) || (v14 = objc_msgSend(a3, "gestureKind"), v14 == TSWPImmediateDoubleTap) || (v15 = objc_msgSend(a3, "gestureKind"), v15 == TSWPDoubleTapAndTouch);
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (BOOL)handleGesture:(id)a3
{
  if (!self->_ownsShow)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = [a3 gestureKind];
  v6 = TSWPImmediateSingleTap;
  if (v5 != TSWPImmediateSingleTap)
  {
    v7 = [a3 gestureKind];
    if (v7 != TSWPImmediateDoubleTap)
    {
      v8 = [a3 gestureKind];
      if (v8 != TSWPDoubleTapAndTouch)
      {
        v9 = [a3 gestureKind];
        if (v9 != TSWPImmediatePress)
        {
          [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
        }
      }
    }
  }

  if ([a3 gestureKind] == v6 || (v10 = objc_msgSend(a3, "gestureKind"), v10 == TSWPImmediateDoubleTap) || (v11 = objc_msgSend(a3, "gestureKind"), v11 == TSWPDoubleTapAndTouch) || (v12 = objc_msgSend(a3, "gestureKind"), v12 == TSWPImmediatePress))
  {
    if ([a3 gestureState] == 3)
    {
      [a3 boundsLocationForICC:{-[THWKeynoteShowRep interactiveCanvasController](self, "interactiveCanvasController")}];
      -[CALayer convertPoint:fromLayer:](self->_showLayer, "convertPoint:fromLayer:", [objc_msgSend(-[THWKeynoteShowRep interactiveCanvasController](self "interactiveCanvasController")], v13, v14);
      if (([(KPFPlayerControllerProtocol *)self->_kpfPlayer handleTouchAtLocation:?]& 1) == 0)
      {
        v15 = [(KPFPlayerControllerProtocol *)self->_kpfPlayer transportControlCloneCanGotoNext];
        kpfPlayer = self->_kpfPlayer;
        if (v15)
        {
          [(KPFPlayerControllerProtocol *)kpfPlayer transportControlCloneGotoNext];
        }

        else
        {
          [(KPFPlayerControllerProtocol *)kpfPlayer transportControlCloneGotoFirst];
        }
      }
    }
  }

  return 1;
}

- (BOOL)kpfPlayer:(id)a3 handleURL:(id)a4
{
  if ([(THWKeynoteShowRep *)self kpfPlayer]!= a3)
  {
    return 0;
  }

  [(THWKeynoteShowRep *)self parentRep];
  v7 = TSUProtocolCast();

  return [v7 keynoteShowRep:self handleURL:a4];
}

- (id)p_documentNavigatorFromNotification:(id)a3
{
  objc_opt_class();
  [a3 object];
  result = TSUDynamicCast();
  if (!result)
  {
    [a3 object];
    v5 = TSUProtocolCast();

    return [v5 documentNavigator];
  }

  return result;
}

- (void)handleNotificationVantageWillChange:(id)a3
{
  if (self->_ownsShow)
  {
    v4 = [objc_msgSend(a3 "userInfo")];
    if (([v4 isEqualToString:@"THVantageChangeReasonBookOpen"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"THVantageChangeReasonScrolling") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"THVantageChangeReasonNavigation") & 1) == 0)
    {
      kpfPlayer = self->_kpfPlayer;

      [(KPFPlayerControllerProtocol *)kpfPlayer pauseBackgroundSoundtrack];
    }
  }
}

- (void)handleNotificationVantageDidChange:(id)a3
{
  if (self->_ownsShow)
  {
    v5 = [objc_msgSend(a3 "userInfo")];
    v6 = [-[THWKeynoteShowRep p_documentNavigatorFromNotification:](self p_documentNavigatorFromNotification:{a3), "currentAbsolutePageIndex"}];
    if ([v5 isEqualToString:@"THVantageChangeReasonScrolling"])
    {
      v7 = v6 != self->_currentAbsolutePageIndex;
    }

    else
    {
      v7 = 0;
    }

    self->_currentAbsolutePageIndex = v6;
    if (([v5 isEqualToString:@"THVantageChangeReasonNavigation"] & 1) != 0 || v7)
    {
      if ((([(KPFPlayerControllerProtocol *)[(THWKeynoteShowRep *)self kpfPlayer] isPlaying]& 1) != 0 || [(KPFPlayerControllerProtocol *)[(THWKeynoteShowRep *)self kpfPlayer] isBackgroundSoundPlaying]) && [(THWKeynoteShowRep *)self playingOnAbsolutePageIndex]!= v6)
      {
        [(KPFPlayerControllerProtocol *)self->_kpfPlayer pauseMediaPlayback];
        [(KPFPlayerControllerProtocol *)self->_kpfPlayer pauseBackgroundSoundtrack];
        v9 = self;
        v10 = 1;
      }

      else
      {
        if (![(THWKeynoteShowRep *)self wasStoppedByScrolling]|| [(THWKeynoteShowRep *)self playingOnAbsolutePageIndex]!= v6)
        {
          return;
        }

        [(KPFPlayerControllerProtocol *)self->_kpfPlayer resumeMediaPlayback];
        [(KPFPlayerControllerProtocol *)self->_kpfPlayer resumeBackgroundSoundtrack];
        v9 = self;
        v10 = 0;
      }

      [(THWKeynoteShowRep *)v9 setWasStoppedByScrolling:v10];
    }

    else if (([v5 isEqualToString:@"THVantageChangeReasonBookOpen"] & 1) == 0)
    {
      kpfPlayer = self->_kpfPlayer;

      [(KPFPlayerControllerProtocol *)kpfPlayer resumeBackgroundSoundtrack];
    }
  }
}

- (void)p_handleSwipeGesture:(id)a3
{
  if ([(THWKeynoteShowRep *)self swipeLeftGR]== a3)
  {
    kpfPlayer = self->_kpfPlayer;

    [(KPFPlayerControllerProtocol *)kpfPlayer gotoNextEvent];
  }

  else if ([(THWKeynoteShowRep *)self swipeRightGR]== a3)
  {
    v6 = self->_kpfPlayer;

    [(KPFPlayerControllerProtocol *)v6 gotoPreviousSlide];
  }
}

@end