@interface KPFGingerPlayerController
- (BOOL)handleTouchAtLocation:(CGPoint)location;
- (BOOL)isTransitioningToStop;
- (KPFGingerPlayerController)initWithKPFDocument:(id)document showLayer:(id)layer;
- (id)accessibilityLabelForCurrentEvent;
- (id)accessibilityRegionsForCurrentEvent;
- (id)hyperlinksRectArray;
- (unint64_t)transportControlCloneCount;
- (void)dealloc;
- (void)endshow;
- (void)gotoLastSlide;
- (void)gotoNextSlide;
- (void)gotoPreviousEvent;
- (void)gotoPreviousSlide;
- (void)gotoSlideAtIndex:(unint64_t)index shouldAutoPlay:(BOOL)play;
- (void)p_animationEnded;
- (void)p_announceStateUpdate;
- (void)p_goToSlideWithSlideTag:(id)tag;
- (void)p_handleURL:(id)l;
- (void)p_resetToFirstSlideAndShouldAutoPlay:(BOOL)play;
- (void)p_triggerEvent;
- (void)playPreparedShow;
- (void)prepareWithEndShowHandler:(id)handler;
- (void)retreatToPreviousSlide;
- (void)tearDownShow;
- (void)transportControlCloneGotoFirst;
- (void)transportControlCloneGotoLast;
- (void)transportControlCloneGotoNext;
- (void)transportControlCloneGotoPrev;
@end

@implementation KPFGingerPlayerController

- (KPFGingerPlayerController)initWithKPFDocument:(id)document showLayer:(id)layer
{
  v8.receiver = self;
  v8.super_class = KPFGingerPlayerController;
  v6 = [(KPFGingerPlayerController *)&v8 init];
  if (v6)
  {
    v6->mSession = [[KPFSession alloc] initWithKPFDocument:document showLayer:layer];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KPFGingerPlayerController;
  [(KPFGingerPlayerController *)&v3 dealloc];
}

- (void)playPreparedShow
{
  if ([(KPFSession *)self->mSession showLayer]&& [(KPFSession *)self->mSession playbackState]== 2)
  {
    [(KPFSession *)self->mSession setupAndPlaySoundtrackAfterDelay:0.0];
    if ([(KPFGingerEvent *)[(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] currentEvent] isAutomatic])
    {
      [(KPFGingerPlayerController *)self p_triggerEvent];
    }

    mSession = self->mSession;

    [(KPFSession *)mSession setPlaybackState:3];
  }
}

- (void)prepareWithEndShowHandler:(id)handler
{
  if ([(KPFSession *)self->mSession showLayer]&& [(KPFSession *)self->mSession playbackState]== 1)
  {
    [(CALayer *)[(KPFSession *)self->mSession showLayer] setSublayers:0];
    [(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] renderSlideWithSession:self->mSession];
    mSession = self->mSession;

    [(KPFSession *)mSession setPlaybackState:2];
  }
}

- (void)endshow
{
  [(KPFSession *)self->mSession setPlaybackState:6];
  [(KPFSession *)self->mSession stopAllAnimations];
  mSession = self->mSession;

  [(KPFSession *)mSession setPlaybackState:1];
}

- (void)tearDownShow
{
  if ([(KPFSession *)self->mSession playbackState]== 1)
  {
    showLayer = [(KPFSession *)self->mSession showLayer];

    [(CALayer *)showLayer setSublayers:0];
  }
}

- (BOOL)isTransitioningToStop
{
  playbackState = [(KPFSession *)self->mSession playbackState];
  if (playbackState != 1)
  {
    LOBYTE(playbackState) = [(KPFSession *)self->mSession playbackState]== 6;
  }

  return playbackState;
}

- (void)p_handleURL:(id)l
{
  v4 = [NSURL URLWithString:l];
  kpfPlayerControllerDelegate = [(KPFGingerPlayerController *)self kpfPlayerControllerDelegate];

  [(KPFPlayerControllerDelegateProtocol *)kpfPlayerControllerDelegate kpfPlayer:self handleURL:v4];
}

- (void)retreatToPreviousSlide
{
  previousSlideIndex = [(KPFSession *)self->mSession previousSlideIndex];

  [(KPFGingerPlayerController *)self gotoSlideAtIndex:previousSlideIndex shouldAutoPlay:1];
}

- (BOOL)handleTouchAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  if ([(KPFSession *)self->mSession playbackState]== 3 || [(KPFSession *)self->mSession playbackState]== 2)
  {
    v6 = [(KPFGingerEvent *)[(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] currentEvent] hyperlinkAtLocation:x, y];
    v7 = v6;
    if (v6)
    {
      if ([v6 hasPrefix:@"?slideid="])
      {
        v8 = [v7 substringFromIndex:9];
        self->mHyperlinkSlideTag = v8;
        [(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] renderHyperLinkedSlideWithSlideTag:v8 withSession:self->mSession];
        hyperLinkedEvent = [(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] hyperLinkedEvent];
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_9D794;
        v11[3] = &unk_45AE00;
        v11[4] = self;
        [(KPFGingerEvent *)hyperLinkedEvent setAnimationEndHandler:v11];
        [(KPFGingerEvent *)[(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] hyperLinkedEvent] animateWithSession:self->mSession];
        goto LABEL_19;
      }

      if (![v7 isEqualToString:@"?action=exitpresentation"])
      {
        if (![v7 isEqualToString:@"?action=retreat"])
        {
          if ([v7 isEqualToString:@"?slide=first"])
          {
            [(KPFGingerPlayerController *)self gotoFirstSlide];
            goto LABEL_19;
          }

          if ([v7 isEqualToString:@"?slide=last"])
          {
            [(KPFGingerPlayerController *)self gotoLastSlide];
            goto LABEL_19;
          }

          if ([v7 isEqualToString:@"?slide=next"])
          {
            [(KPFGingerPlayerController *)self gotoNextSlide];
            goto LABEL_19;
          }

          if (![v7 isEqualToString:@"?slide=previous"])
          {
            [(KPFGingerPlayerController *)self p_handleURL:v7];
            goto LABEL_19;
          }
        }

        [(KPFGingerPlayerController *)self retreatToPreviousSlide];
LABEL_19:
        LOBYTE(v7) = 1;
        return v7;
      }

      LOBYTE(v7) = 1;
      [(KPFGingerPlayerController *)self p_resetToFirstSlideAndShouldAutoPlay:1];
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)accessibilityLabelForCurrentEvent
{
  v3 = +[NSMutableArray array];
  [v3 addObject:{+[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", objc_msgSend(THBundle(), "localizedStringForKey:value:table:", @"Slide %1$lu of %2$lu", &stru_471858, 0), -[KPFSession currentSlideIndex](self->mSession, "currentSlideIndex") + 1, -[NSMutableArray count](-[KPFSession KPFSlideList](self->mSession, "KPFSlideList"), "count"))}];
  if ([(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] eventCount]>= 2)
  {
    [v3 addObject:{+[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", objc_msgSend(THBundle(), "localizedStringForKey:value:table:", @"Build %1$lu of %2$lu", &stru_471858, 0), -[KPFGingerSlide curentEventIndex](-[KPFSession currentSlide](self->mSession, "currentSlide"), "curentEventIndex") + 1, -[KPFGingerSlide eventCount](-[KPFSession currentSlide](self->mSession, "currentSlide"), "eventCount"))}];
  }

  return [v3 componentsJoinedByString:{@", "}];
}

- (id)accessibilityRegionsForCurrentEvent
{
  currentEvent = [(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] currentEvent];

  return [(KPFGingerEvent *)currentEvent accessibilityArray];
}

- (void)gotoPreviousEvent
{
  if ([(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] decrementCurrentEventIndex])
  {
    self->mQueuedTrigger = 0;
    [(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] renderCurrentEventWithSession:self->mSession];
    [(KPFSession *)self->mSession setPlaybackState:3];
    if ([(KPFGingerEvent *)[(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] currentEvent] isAutomatic])
    {

      [(KPFGingerPlayerController *)self p_triggerEvent];
    }
  }

  else
  {

    [(KPFGingerPlayerController *)self gotoPreviousSlide];
  }
}

- (void)gotoSlideAtIndex:(unint64_t)index shouldAutoPlay:(BOOL)play
{
  playCopy = play;
  [(KPFSession *)self->mSession setSlideIndex:index];
  [(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] renderSlideWithSession:self->mSession];
  [(KPFSession *)self->mSession setPlaybackState:3];
  self->mQueuedTrigger = 0;
  if ([(KPFGingerEvent *)[(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] currentEvent] isAutomatic])
  {
    v6 = !playCopy;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {

    [(KPFGingerPlayerController *)self p_triggerEvent];
  }
}

- (void)p_goToSlideWithSlideTag:(id)tag
{
  [(KPFSession *)self->mSession setSlideWithSlideTag:tag];
  [(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] renderSlideWithSession:self->mSession];
  [(KPFSession *)self->mSession setPlaybackState:3];
  self->mQueuedTrigger = 0;
  if ([(KPFGingerEvent *)[(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] currentEvent] isAutomatic])
  {

    [(KPFGingerPlayerController *)self p_triggerEvent];
  }
}

- (void)gotoNextSlide
{
  if ([(KPFSession *)self->mSession incrementCurrentSlideIndex])
  {
    [(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] renderSlideWithSession:self->mSession];
    [(KPFSession *)self->mSession setPlaybackState:3];
    self->mQueuedTrigger = 0;
    if ([(KPFGingerEvent *)[(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] currentEvent] isAutomatic])
    {

      [(KPFGingerPlayerController *)self p_triggerEvent];
    }
  }
}

- (void)gotoPreviousSlide
{
  curentEventIndex = [(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] curentEventIndex];
  currentSlide = [(KPFSession *)self->mSession currentSlide];
  if (curentEventIndex)
  {
    goto LABEL_2;
  }

  if (![(KPFGingerSlide *)currentSlide curentEventIndex]&& [(KPFSession *)self->mSession decrementCurrentSlideIndex])
  {
    currentSlide = [(KPFSession *)self->mSession currentSlide];
LABEL_2:
    [(KPFGingerSlide *)currentSlide renderSlideWithSession:self->mSession];
    [(KPFSession *)self->mSession setPlaybackState:3];
    self->mQueuedTrigger = 0;
  }
}

- (void)gotoLastSlide
{
  v3 = [(NSMutableArray *)[(KPFSession *)self->mSession KPFSlideList] count]- 1;

  [(KPFGingerPlayerController *)self gotoSlideAtIndex:v3 shouldAutoPlay:1];
}

- (void)p_resetToFirstSlideAndShouldAutoPlay:(BOOL)play
{
  playCopy = play;
  [NSObject cancelPreviousPerformRequestsWithTarget:self];
  [(KPFSession *)self->mSession stopAllAnimations];
  [(KPFGingerPlayerController *)self gotoSlideAtIndex:0 shouldAutoPlay:playCopy];
  [(KPFSession *)self->mSession setupAndPlaySoundtrackAfterDelay:0.0];
  mSession = self->mSession;

  [(KPFSession *)mSession setPlaybackState:2];
}

- (void)transportControlCloneGotoPrev
{
  if ([(KPFGingerPlayerController *)self transportControlCloneCanGotoPrev])
  {
    [(KPFGingerPlayerController *)self gotoPreviousSlide];
  }

  [(KPFGingerPlayerController *)self p_announceStateUpdate];
}

- (void)transportControlCloneGotoNext
{
  if ([(KPFGingerPlayerController *)self transportControlCloneCanGotoNext])
  {
    [(KPFGingerPlayerController *)self gotoNextEvent];
  }

  [(KPFGingerPlayerController *)self p_announceStateUpdate];
}

- (void)transportControlCloneGotoFirst
{
  if ([(KPFGingerPlayerController *)self transportControlCloneCanGotoFirst])
  {
    [(KPFGingerPlayerController *)self p_resetToFirstSlideAndShouldAutoPlay:0];

    [(KPFGingerPlayerController *)self p_announceStateUpdate];
  }
}

- (void)transportControlCloneGotoLast
{
  if ([(KPFGingerPlayerController *)self transportControlCloneCanGotoLast])
  {
    [(KPFGingerPlayerController *)self gotoLastSlide];
  }

  [(KPFGingerPlayerController *)self p_announceStateUpdate];
}

- (void)p_announceStateUpdate
{
  v3 = +[NSNotificationCenter defaultCenter];

  [(NSNotificationCenter *)v3 postNotificationName:@"kTSWTransportControlCloneDidUpdateNotification" object:self];
}

- (unint64_t)transportControlCloneCount
{
  kPFSlideList = [(KPFSession *)self->mSession KPFSlideList];

  return [(NSMutableArray *)kPFSlideList count];
}

- (id)hyperlinksRectArray
{
  result = [(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] currentEvent];
  if (result)
  {

    return [result hyperlinksRectArray];
  }

  return result;
}

- (void)p_animationEnded
{
  nextEvent = [(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] nextEvent];
  if (!nextEvent)
  {
    if (![(KPFSession *)self->mSession nextSlide])
    {
      isAutomatic = 0;
      goto LABEL_5;
    }

    nextEvent = [(KPFGingerSlide *)[(KPFSession *)self->mSession nextSlide] currentEvent];
  }

  isAutomatic = [(KPFGingerEvent *)nextEvent isAutomatic];
LABEL_5:
  [(KPFSession *)self->mSession setPlaybackState:5];
  if (self->mQueuedTrigger || isAutomatic)
  {
    [(KPFGingerPlayerController *)self performSelector:"p_triggerEvent" withObject:0 afterDelay:0.0];
    self->mQueuedTrigger = 0;
    goto LABEL_12;
  }

  if (![(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] containsMovie]&& [(KPFSession *)self->mSession playbackState]== 5)
  {
    incrementCurrentEventIndex = [(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] incrementCurrentEventIndex];
    mSession = self->mSession;
    if (incrementCurrentEventIndex)
    {
      [(KPFGingerSlide *)[(KPFSession *)mSession currentSlide] renderCurrentEventWithSession:self->mSession];
LABEL_18:
      [(KPFSession *)self->mSession setPlaybackState:3];
      goto LABEL_12;
    }

    if ([(KPFSession *)mSession incrementCurrentSlideIndex])
    {
      [(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] renderSlideWithSession:self->mSession];
      goto LABEL_18;
    }

    [(KPFGingerPlayerController *)self p_resetToFirstSlideAndShouldAutoPlay:0];
  }

LABEL_12:

  [(KPFGingerPlayerController *)self p_announceStateUpdate];
}

- (void)p_triggerEvent
{
  if ([(KPFSession *)self->mSession playbackState]== 2)
  {
    [(KPFSession *)self->mSession setPlaybackState:3];
  }

  if ([(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] containsMovie]&& [(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] mediaPlaybackIsPaused])
  {
    currentSlide = [(KPFSession *)self->mSession currentSlide];

    [(KPFGingerSlide *)currentSlide resumeMediaPlayback];
    return;
  }

  if ([(KPFSession *)self->mSession playbackState]== 5)
  {
    incrementCurrentEventIndex = [(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] incrementCurrentEventIndex];
    mSession = self->mSession;
    if (incrementCurrentEventIndex)
    {
      [(KPFGingerSlide *)[(KPFSession *)mSession currentSlide] renderCurrentEventWithSession:self->mSession];
LABEL_13:
      [(KPFSession *)self->mSession setPlaybackState:3];
      goto LABEL_15;
    }

    if ([(KPFSession *)mSession incrementCurrentSlideIndex])
    {
      [(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] renderSlideWithSession:self->mSession];
      goto LABEL_13;
    }

    [(KPFGingerPlayerController *)self p_resetToFirstSlideAndShouldAutoPlay:0];
  }

LABEL_15:
  if (!self->mQueuedTrigger)
  {
    if ([(KPFGingerEvent *)[(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] currentEvent] isMoviePlaying]|| [(KPFGingerEvent *)[(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] currentEvent] isAnimating])
    {
      self->mQueuedTrigger = 1;
    }

    else if ([(KPFSession *)self->mSession playbackState]== 3)
    {
      currentEvent = [(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] currentEvent];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_9E218;
      v7[3] = &unk_45AE00;
      v7[4] = self;
      [(KPFGingerEvent *)currentEvent setAnimationEndHandler:v7];
      [(KPFSession *)self->mSession setPlaybackState:4];
      [(KPFGingerSlide *)[(KPFSession *)self->mSession currentSlide] animateSlideWithSession:self->mSession];
    }
  }
}

@end