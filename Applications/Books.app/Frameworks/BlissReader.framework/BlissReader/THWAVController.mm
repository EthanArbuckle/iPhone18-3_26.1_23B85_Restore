@interface THWAVController
+ (id)sharedController;
- (BOOL)p_shouldHandleVantageDidChangeNotification:(id)a3;
- (THWAVController)init;
- (id)newTransportController;
- (id)p_documentNavigatorFromNotification:(id)a3;
- (void)audioPlaybackWillStart:(id)a3;
- (void)dealloc;
- (void)handleNotificationVantageDidChange:(id)a3;
- (void)stopPlayer;
- (void)stopPlayerNotInDocumentRoot:(id)a3;
- (void)togglePlayPause;
- (void)transportControllerDidBecomeInvalid:(id)a3;
- (void)transportControllerDidStartAutoplaying:(id)a3;
- (void)transportControllerDidStartPlaying:(id)a3;
- (void)transportControllerDidStopAutoplaying:(id)a3;
- (void)transportControllerDidStopPlaying:(id)a3;
@end

@implementation THWAVController

+ (id)sharedController
{
  result = qword_5678C8;
  if (!qword_5678C8)
  {
    result = objc_alloc_init(THWAVController);
    qword_5678C8 = result;
  }

  return result;
}

- (THWAVController)init
{
  v4.receiver = self;
  v4.super_class = THWAVController;
  v2 = [(THWAVController *)&v4 init];
  if (v2)
  {
    [(THWAVController *)v2 setActiveTransportControllers:+[NSMutableArray array]];
    [(THWAVController *)v2 setAutoplayingTransportControllers:+[NSMutableSet set]];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v2 name:"handleNotificationVantageDidChange:" object:@"THVantageDidChangeNotification", 0];
    [+[BCAudioMuxingCoordinator sharedInstance](BCAudioMuxingCoordinator addAudioMuxingObserver:"addAudioMuxingObserver:", v2];
  }

  return v2;
}

- (void)dealloc
{
  [+[BCAudioMuxingCoordinator sharedInstance](BCAudioMuxingCoordinator removeAudioMuxingObserver:"removeAudioMuxingObserver:", self];
  [(THWAVController *)self setActiveTransportControllers:0];
  [(THWAVController *)self setAutoplayingTransportControllers:0];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:@"THVantageDidChangeNotification", 0];
  v3.receiver = self;
  v3.super_class = THWAVController;
  [(THWAVController *)&v3 dealloc];
}

- (id)newTransportController
{
  v3 = objc_alloc_init(THWAVTransportController);
  [(NSMutableArray *)[(THWAVController *)self activeTransportControllers] addObject:v3];
  return v3;
}

- (void)togglePlayPause
{
  if ([(THWAVController *)self playingTransportController])
  {
    v3 = [(THWAVController *)self playingTransportController];

    [(THWAVTransportControllable *)v3 togglePlayPause];
  }
}

- (void)stopPlayer
{
  if ([(THWAVController *)self playingTransportController])
  {
    v3 = [(THWAVController *)self playingTransportController];

    [(THWAVTransportControllable *)v3 stop];
  }
}

- (void)stopPlayerNotInDocumentRoot:(id)a3
{
  if ([(THWAVController *)self playingTransportController]&& [(THWAVTransportControllable *)[(THWAVController *)self playingTransportController] documentRoot]!= a3)
  {
    v5 = [(THWAVController *)self playingTransportController];

    [(THWAVTransportControllable *)v5 stop];
  }
}

- (void)transportControllerDidStartPlaying:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_169F24;
  v3[3] = &unk_45AF70;
  v3[5] = self;
  v3[6] = a3;
  [+[BCAudioMuxingCoordinator sharedInstance](BCAudioMuxingCoordinator beginLongAudioSessionWithIdentifier:"beginLongAudioSessionWithIdentifier:completion:" completion:@"THWAVController", v3];
}

- (void)transportControllerDidStopPlaying:(id)a3
{
  if ([(THWAVController *)self playingTransportController]== a3)
  {
    [(THWAVController *)self setPlayingTransportController:0];
  }

  else
  {
    [(NSMutableSet *)[(THWAVController *)self autoplayingTransportControllers] removeObject:a3];
  }

  v5 = +[BCAudioMuxingCoordinator sharedInstance];

  [(BCAudioMuxingCoordinator *)v5 endLongAudioSessionWithIdentifier:@"THWAVController"];
}

- (void)transportControllerDidBecomeInvalid:(id)a3
{
  [(NSMutableArray *)[(THWAVController *)self activeTransportControllers] removeObject:a3];
  if ([(THWAVController *)self playingTransportController]== a3)
  {
    [(THWAVController *)self setPlayingTransportController:0];
  }

  v5 = +[BCAudioMuxingCoordinator sharedInstance];

  [(BCAudioMuxingCoordinator *)v5 endLongAudioSessionWithIdentifier:@"THWAVController"];
}

- (void)transportControllerDidStartAutoplaying:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_16A160;
  v3[3] = &unk_45AF70;
  v3[5] = self;
  v3[6] = a3;
  [+[BCAudioMuxingCoordinator sharedInstance](BCAudioMuxingCoordinator beginLongAudioSessionWithIdentifier:"beginLongAudioSessionWithIdentifier:completion:" completion:@"THWAVController", v3];
}

- (void)transportControllerDidStopAutoplaying:(id)a3
{
  [(NSMutableSet *)[(THWAVController *)self autoplayingTransportControllers] removeObject:a3];
  v3 = +[BCAudioMuxingCoordinator sharedInstance];

  [(BCAudioMuxingCoordinator *)v3 endLongAudioSessionWithIdentifier:@"THWAVController"];
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

- (BOOL)p_shouldHandleVantageDidChangeNotification:(id)a3
{
  v5 = [objc_msgSend(a3 "userInfo")];
  if ([-[THWAVTransportControllable movieLayout](-[THWAVController playingTransportController](self "playingTransportController")])
  {

    return [v5 isEqualToString:@"THVantageChangeReasonNavigation"];
  }

  else
  {
    v7 = [-[THWAVController p_documentNavigatorFromNotification:](self p_documentNavigatorFromNotification:{a3), "currentAbsolutePageIndex"}];
    if ([v5 isEqualToString:@"THVantageChangeReasonWindowResize"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"THVantageChangeReasonRotation"))
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      v8 = [v5 isEqualToString:@"THVantageChangeReasonScrolling"] ^ 1;
    }

    if ([v5 isEqualToString:@"THVantageChangeReasonScrolling"])
    {
      LOBYTE(v8) = v7 != self->_currentAbsolutePageIndex;
    }

    self->_currentAbsolutePageIndex = v7;
    return v8;
  }
}

- (void)handleNotificationVantageDidChange:(id)a3
{
  if ([(THWAVController *)self p_shouldHandleVantageDidChangeNotification:a3]&& [(THWAVController *)self playingTransportController])
  {
    [(THWAVTransportControllable *)[(THWAVController *)self playingTransportController] stop];

    [(THWAVController *)self setPlayingTransportController:0];
  }
}

- (void)audioPlaybackWillStart:(id)a3
{
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (v5)
  {
    v6 = v5;
    v7 = [objc_msgSend(objc_msgSend(v5 "movieInfo")];
    v8 = [objc_msgSend(v6 "movieInfo")];
    v9 = [objc_msgSend(-[THWAVTransportControllable movieLayout](-[THWAVController playingTransportController](self "playingTransportController")];
    if (v7)
    {
      return;
    }

    v10 = [v8 isEqual:v9];
    if (a3 == self || (v10 & 1) != 0)
    {
      return;
    }
  }

  else if (a3 == self)
  {
    return;
  }

  [(THWAVController *)self stopPlayer];
}

@end