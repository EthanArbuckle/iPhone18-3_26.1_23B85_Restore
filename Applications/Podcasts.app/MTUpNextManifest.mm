@interface MTUpNextManifest
- (MTPlayerController)playerController;
- (MTUpNextManifest)initWithPlayerController:(id)a3;
- (void)_mediaItemDidChange:(id)a3;
- (void)_upNextItemsDidChange;
- (void)_updateUpNext;
- (void)dealloc;
- (void)setCurrentIndex:(unint64_t)a3;
@end

@implementation MTUpNextManifest

- (MTUpNextManifest)initWithPlayerController:(id)a3
{
  v4 = a3;
  [(MTUpNextManifest *)self setPlayerController:v4];
  v5 = [v4 upNextController];
  v6 = [v5 items];

  v14.receiver = self;
  v14.super_class = MTUpNextManifest;
  v7 = [(MTItemListManifest *)&v14 initWithItems:v6];
  if (v7)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    v9 = IMAVPlayerNotification_MediaItemDidChange;
    v10 = [v4 player];
    [v8 addObserver:v7 selector:"_mediaItemDidChange:" name:v9 object:v10];

    v11 = +[NSNotificationCenter defaultCenter];
    v12 = [v4 upNextController];
    [v11 addObserver:v7 selector:"_upNextItemsDidChange" name:@"MTUpNextControllerItemsDidChange" object:v12];
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

- (void)setCurrentIndex:(unint64_t)a3
{
  v3 = a3;
  if (a3 && a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(MTUpNextManifest *)self playerController];
    v6 = [v5 upNextController];
    [v6 beginUpdates];

    do
    {
      v7 = [(MTUpNextManifest *)self playerController];
      v8 = [v7 upNextController];
      [v8 removeEpisodeAtIndex:0];

      --v3;
    }

    while (v3);
    v9 = [(MTUpNextManifest *)self playerController];
    v10 = [v9 upNextController];
    [v10 endUpdates];

    v11 = [(MTUpNextManifest *)self playerController];
    v12 = [v11 upNextController];
    if ([v12 count])
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
    [(MTUpNextManifest *)&v14 setCurrentIndex:a3, self, MTUpNextManifest, v15.receiver, v15.super_class];
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

- (void)_mediaItemDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v11 = [v4 objectForKeyedSubscript:IMAVPlayerNotificationKey_OldMediaItem];

  v5 = v11;
  if (v11)
  {
    v6 = [(MTUpNextManifest *)self currentItem];
    if (v11 == v6)
    {
      v7 = [(MTUpNextManifest *)self playerController];
      v8 = [v7 upNextController];
      v9 = [v8 count];

      v5 = v11;
      if (!v9)
      {
        goto LABEL_6;
      }

      v6 = [(MTUpNextManifest *)self playerController];
      v10 = [v6 upNextController];
      [v10 removeEpisodeAtIndex:0];
    }

    v5 = v11;
  }

LABEL_6:
}

- (void)_updateUpNext
{
  v3 = [(MTUpNextManifest *)self playerController];
  v4 = [v3 upNextController];
  v5 = [v4 items];

  [(MTItemListManifest *)self setItems:v5];
}

- (MTPlayerController)playerController
{
  WeakRetained = objc_loadWeakRetained(&self->_playerController);

  return WeakRetained;
}

@end