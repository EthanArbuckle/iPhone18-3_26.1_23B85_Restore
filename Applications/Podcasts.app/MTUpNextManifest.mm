@interface MTUpNextManifest
- (MTPlayerController)playerController;
- (MTUpNextManifest)initWithPlayerController:(id)controller;
- (void)_mediaItemDidChange:(id)change;
- (void)_upNextItemsDidChange;
- (void)_updateUpNext;
- (void)dealloc;
- (void)setCurrentIndex:(unint64_t)index;
@end

@implementation MTUpNextManifest

- (MTUpNextManifest)initWithPlayerController:(id)controller
{
  controllerCopy = controller;
  [(MTUpNextManifest *)self setPlayerController:controllerCopy];
  upNextController = [controllerCopy upNextController];
  items = [upNextController items];

  v14.receiver = self;
  v14.super_class = MTUpNextManifest;
  v7 = [(MTItemListManifest *)&v14 initWithItems:items];
  if (v7)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    v9 = IMAVPlayerNotification_MediaItemDidChange;
    player = [controllerCopy player];
    [v8 addObserver:v7 selector:"_mediaItemDidChange:" name:v9 object:player];

    v11 = +[NSNotificationCenter defaultCenter];
    upNextController2 = [controllerCopy upNextController];
    [v11 addObserver:v7 selector:"_upNextItemsDidChange" name:@"MTUpNextControllerItemsDidChange" object:upNextController2];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MTUpNextManifest;
  [(MTUpNextManifest *)&v4 dealloc];
}

- (void)setCurrentIndex:(unint64_t)index
{
  indexCopy = index;
  if (index && index != 0x7FFFFFFFFFFFFFFFLL)
  {
    playerController = [(MTUpNextManifest *)self playerController];
    upNextController = [playerController upNextController];
    [upNextController beginUpdates];

    do
    {
      playerController2 = [(MTUpNextManifest *)self playerController];
      upNextController2 = [playerController2 upNextController];
      [upNextController2 removeEpisodeAtIndex:0];

      --indexCopy;
    }

    while (indexCopy);
    playerController3 = [(MTUpNextManifest *)self playerController];
    upNextController3 = [playerController3 upNextController];
    [upNextController3 endUpdates];

    playerController4 = [(MTUpNextManifest *)self playerController];
    upNextController4 = [playerController4 upNextController];
    if ([upNextController4 count])
    {
      v13 = 0;
    }

    else
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [(MTUpNextManifest *)&v15 setCurrentIndex:v13, v14.receiver, v14.super_class, self, MTUpNextManifest];
  }

  else
  {
    [(MTUpNextManifest *)&v14 setCurrentIndex:index, self, MTUpNextManifest, v15.receiver, v15.super_class];
  }
}

- (void)_upNextItemsDidChange
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000C2C68;
  v2[3] = &unk_1004D8358;
  v2[4] = self;
  [IMAVPlayer performOnMainQueue:v2];
}

- (void)_mediaItemDidChange:(id)change
{
  userInfo = [change userInfo];
  v11 = [userInfo objectForKeyedSubscript:IMAVPlayerNotificationKey_OldMediaItem];

  v5 = v11;
  if (v11)
  {
    currentItem = [(MTUpNextManifest *)self currentItem];
    if (v11 == currentItem)
    {
      playerController = [(MTUpNextManifest *)self playerController];
      upNextController = [playerController upNextController];
      v9 = [upNextController count];

      v5 = v11;
      if (!v9)
      {
        goto LABEL_6;
      }

      currentItem = [(MTUpNextManifest *)self playerController];
      upNextController2 = [currentItem upNextController];
      [upNextController2 removeEpisodeAtIndex:0];
    }

    v5 = v11;
  }

LABEL_6:
}

- (void)_updateUpNext
{
  playerController = [(MTUpNextManifest *)self playerController];
  upNextController = [playerController upNextController];
  items = [upNextController items];

  [(MTItemListManifest *)self setItems:items];
}

- (MTPlayerController)playerController
{
  WeakRetained = objc_loadWeakRetained(&self->_playerController);

  return WeakRetained;
}

@end