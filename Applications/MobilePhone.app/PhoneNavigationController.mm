@interface PhoneNavigationController
+ ($1FF454C5B48E436092D281DABF654916)badge;
- (BOOL)shouldSnapshot;
- (PhoneNavigationController)initWithRootViewController:(id)a3;
- (VMPlayerController)playerController;
- (id)selectedMessage;
- (id)selectedMessageTableViewCell;
- (id)tabBarIconImage;
- (id)tabBarIconName;
- (void)_updateRootViewController;
- (void)dealloc;
- (void)handleURL:(id)a3;
- (void)playerController:(id)a3 didChangeToCurrentTime:(float)a4;
- (void)playerController:(id)a3 didChangeToDuration:(double)a4;
- (void)playerController:(id)a3 didChangeToStatus:(int64_t)a4;
- (void)playerController:(id)a3 didChangeToTimeControlStatus:(int64_t)a4;
- (void)playerController:(id)a3 didSeekToTime:(float)a4;
- (void)playerController:(id)a3 willSeekToTime:(float)a4;
- (void)prepareForSnapshot;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)setViewControllers:(id)a3;
@end

@implementation PhoneNavigationController

+ ($1FF454C5B48E436092D281DABF654916)badge
{
  v2 = PhoneBadgeKnownZero[0];
  v3 = PhoneBadgeKnownZero[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (id)tabBarIconName
{
  v2 = [(PhoneNavigationController *)self viewControllers];
  v3 = [v2 firstObject];

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 tabBarIconName];
  }

  else
  {
    v4 = &stru_10028F310;
  }

  return v4;
}

- (id)tabBarIconImage
{
  v2 = [(PhoneNavigationController *)self viewControllers];
  v3 = [v2 firstObject];

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 tabBarIconImage];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;

  return v5;
}

- (PhoneNavigationController)initWithRootViewController:(id)a3
{
  v9.receiver = self;
  v9.super_class = PhoneNavigationController;
  v3 = [(PhoneNavigationController *)&v9 initWithRootViewController:a3];
  if (v3)
  {
    if ([UIApp userInterfaceStyle] == 1)
    {
      v4 = objc_alloc_init(UIImage);
      v5 = [(PhoneNavigationController *)v3 navigationBar];
      [v5 setBackgroundImage:v4 forBarPosition:0 barMetrics:0];

      v6 = [(PhoneNavigationController *)v3 navigationBar];
      [v6 setBarStyle:1];

      v7 = [(PhoneNavigationController *)v3 navigationBar];
      [v7 setTranslucent:1];

      [(PhoneNavigationController *)v3 _setClipUnderlapWhileTransitioning:1];
    }

    [(PhoneNavigationController *)v3 setDefinesPresentationContext:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PhoneNavigationController;
  [(PhoneNavigationController *)&v4 dealloc];
}

- (void)_updateRootViewController
{
  v5 = [(PhoneNavigationController *)self viewControllers];
  if (![v5 count])
  {
    goto LABEL_5;
  }

  v3 = [v5 objectAtIndex:0];
  v4 = v3;
  if (v3 && ([(PhoneTabViewController *)v3 conformsToProtocol:&OBJC_PROTOCOL___PhoneTabViewController]& 1) == 0)
  {

LABEL_5:
    v4 = 0;
  }

  if (v4 != self->_rootController)
  {
    objc_storeStrong(&self->_rootController, v4);
  }
}

- (void)setViewControllers:(id)a3
{
  v4.receiver = self;
  v4.super_class = PhoneNavigationController;
  [(PhoneNavigationController *)&v4 setViewControllers:a3];
  [(PhoneNavigationController *)self _updateRootViewController];
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([UIApp userInterfaceStyle] == 1)
  {
    [v6 setEdgesForExtendedLayout:0];
  }

  v9.receiver = self;
  v9.super_class = PhoneNavigationController;
  [(PhoneNavigationController *)&v9 pushViewController:v6 animated:v4];
  v7 = [(PhoneNavigationController *)self viewControllers];
  v8 = [v7 count];

  if (v8 == 1)
  {
    [(PhoneNavigationController *)self _updateRootViewController];
  }
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if ([UIApp userInterfaceStyle] == 1)
  {
    [v8 setEdgesForExtendedLayout:0];
  }

  v10.receiver = self;
  v10.super_class = PhoneNavigationController;
  [(PhoneNavigationController *)&v10 presentViewController:v8 animated:v6 completion:v9];
}

- (BOOL)shouldSnapshot
{
  v3 = [(PhoneNavigationController *)self rootViewController];
  v4 = [(PhoneNavigationController *)self visibleViewController];
  if (v4 == v3)
  {
    v5 = [v3 shouldSnapshot];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)prepareForSnapshot
{
  v2 = [(PhoneNavigationController *)self rootViewController];
  [v2 prepareForSnapshot];
}

- (void)handleURL:(id)a3
{
  v5 = a3;
  v4 = [(PhoneNavigationController *)self rootViewController];
  if (objc_opt_respondsToSelector())
  {
    [v4 handleURL:v5];
  }
}

- (VMPlayerController)playerController
{
  playerController = self->_playerController;
  if (!playerController)
  {
    v4 = objc_alloc_init(VMPlayerController);
    v5 = self->_playerController;
    self->_playerController = v4;

    [(VMPlayerController *)self->_playerController setDelegate:self];
    playerController = self->_playerController;
  }

  return playerController;
}

- (id)selectedMessage
{
  v3 = [(PhoneNavigationController *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 detailIndexPath];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 messageAtIndex:{objc_msgSend(v5, "row")}];

      if (v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v8 = [(PhoneNavigationController *)self displayedMessage];

  if (v8)
  {
    v7 = [(PhoneNavigationController *)self displayedMessage];
  }

  else
  {
    v7 = 0;
  }

LABEL_9:

  return v7;
}

- (id)selectedMessageTableViewCell
{
  v3 = [(PhoneNavigationController *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 detailIndexPath];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 tableView];
      v8 = [v7 cellForRowAtIndexPath:v6];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v10 = [(PhoneNavigationController *)self displayedTableViewCell];

  if (v10)
  {
    v9 = [(PhoneNavigationController *)self displayedTableViewCell];
  }

  else
  {
    v9 = 0;
  }

LABEL_11:

  return v9;
}

- (void)playerController:(id)a3 didChangeToCurrentTime:(float)a4
{
  v6 = [(PhoneNavigationController *)self selectedMessageTableViewCell];
  v7 = v6;
  if (v6)
  {
    v8 = a4;
    v9 = [v6 playerControlsView];
    [v9 setElapsedTime:v8];

    v10 = [(PhoneNavigationController *)self selectedMessage];
    v11 = v10;
    if (v10)
    {
      if ([v10 shouldMarkAsReadForPlaybackCurrentTime:v8])
      {
        v12 = [(PhoneNavigationController *)self voicemailController];
        v14 = v11;
        v13 = [NSArray arrayWithObjects:&v14 count:1];
        [v12 markMessagesAsRead:v13];

        if (([v7 isRead] & 1) == 0)
        {
          [v7 setRead:1];
        }
      }
    }
  }
}

- (void)playerController:(id)a3 didChangeToDuration:(double)a4
{
  v15 = a3;
  v6 = [(PhoneNavigationController *)self selectedMessageTableViewCell];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 playerControlsView];
    v9 = [v8 timelineSlider];
    [v9 setDuration:a4];

    if ([v15 status] == 1)
    {
      [v15 duration];
      v11 = v10;
      v12 = [v7 playerControlsView];
      [v12 setDuration:v11];

      v13 = [v7 playerControlsView];
      [v13 setElapsedTime:0.0];

      v14 = [v7 playerControlsView];
      [v14 setEnabled:1];
    }
  }
}

- (void)playerController:(id)a3 didChangeToStatus:(int64_t)a4
{
  v5 = [(PhoneNavigationController *)self selectedMessageTableViewCell];
  if (v5)
  {
    if (a4 == 2)
    {
      v9 = v5;
      [UIApp setIdleTimerDisabled:0];
    }

    else
    {
      if (a4 == 1)
      {
        v9 = v5;
        v6 = [v5 playerControlsView];
        v7 = v6;
        v8 = 1;
      }

      else
      {
        if (a4)
        {
          goto LABEL_10;
        }

        v9 = v5;
        v6 = [v5 playerControlsView];
        v7 = v6;
        v8 = 0;
      }

      [v6 setEnabled:v8];
    }

    v5 = v9;
  }

LABEL_10:
}

- (void)playerController:(id)a3 didChangeToTimeControlStatus:(int64_t)a4
{
  v5 = [(PhoneNavigationController *)self selectedMessageTableViewCell];
  if (v5)
  {
    if (a4 == 2)
    {
      v14 = v5;
      v12 = [v5 toolbar];
      v13 = [v12 playerControlButton];
      [v13 setPlayerState:1 enabled:1];

      v8 = UIApp;
      v9 = 1;
    }

    else
    {
      if (a4 == 1)
      {
        v14 = v5;
        v10 = [v5 toolbar];
        v11 = [v10 playerControlButton];
        [v11 setPlayerState:1 enabled:1];

LABEL_9:
        v5 = v14;
        goto LABEL_10;
      }

      if (a4)
      {
        goto LABEL_10;
      }

      v14 = v5;
      v6 = [v5 toolbar];
      v7 = [v6 playerControlButton];
      [v7 setPlayerState:0 enabled:1];

      v8 = UIApp;
      v9 = 0;
    }

    [v8 setIdleTimerDisabled:v9];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)playerController:(id)a3 willSeekToTime:(float)a4
{
  v11 = a3;
  v5 = [(PhoneNavigationController *)self selectedMessage];
  v6 = [v5 dataURL];

  v7 = [v11 URL];
  if (!v7 || (v8 = v7, [v11 URL], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqual:", v6), v9, v8, (v10 & 1) == 0))
  {
    [v11 setURL:v6];
  }
}

- (void)playerController:(id)a3 didSeekToTime:(float)a4
{
  v5 = [(PhoneNavigationController *)self selectedMessageTableViewCell];
  if (v5)
  {
    v7 = v5;
    v6 = [v5 playerControlsView];
    [v6 setElapsedTime:0 animated:a4];

    v5 = v7;
  }
}

@end