@interface PhoneNavigationController
+ ($1FF454C5B48E436092D281DABF654916)badge;
- (BOOL)shouldSnapshot;
- (PhoneNavigationController)initWithRootViewController:(id)controller;
- (VMPlayerController)playerController;
- (id)selectedMessage;
- (id)selectedMessageTableViewCell;
- (id)tabBarIconImage;
- (id)tabBarIconName;
- (void)_updateRootViewController;
- (void)dealloc;
- (void)handleURL:(id)l;
- (void)playerController:(id)controller didChangeToCurrentTime:(float)time;
- (void)playerController:(id)controller didChangeToDuration:(double)duration;
- (void)playerController:(id)controller didChangeToStatus:(int64_t)status;
- (void)playerController:(id)controller didChangeToTimeControlStatus:(int64_t)status;
- (void)playerController:(id)controller didSeekToTime:(float)time;
- (void)playerController:(id)controller willSeekToTime:(float)time;
- (void)prepareForSnapshot;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)setViewControllers:(id)controllers;
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
  viewControllers = [(PhoneNavigationController *)self viewControllers];
  firstObject = [viewControllers firstObject];

  if (objc_opt_respondsToSelector())
  {
    tabBarIconName = [firstObject tabBarIconName];
  }

  else
  {
    tabBarIconName = &stru_10028F310;
  }

  return tabBarIconName;
}

- (id)tabBarIconImage
{
  viewControllers = [(PhoneNavigationController *)self viewControllers];
  firstObject = [viewControllers firstObject];

  if (objc_opt_respondsToSelector())
  {
    tabBarIconImage = [firstObject tabBarIconImage];
  }

  else
  {
    tabBarIconImage = objc_opt_new();
  }

  v5 = tabBarIconImage;

  return v5;
}

- (PhoneNavigationController)initWithRootViewController:(id)controller
{
  v9.receiver = self;
  v9.super_class = PhoneNavigationController;
  v3 = [(PhoneNavigationController *)&v9 initWithRootViewController:controller];
  if (v3)
  {
    if ([UIApp userInterfaceStyle] == 1)
    {
      v4 = objc_alloc_init(UIImage);
      navigationBar = [(PhoneNavigationController *)v3 navigationBar];
      [navigationBar setBackgroundImage:v4 forBarPosition:0 barMetrics:0];

      navigationBar2 = [(PhoneNavigationController *)v3 navigationBar];
      [navigationBar2 setBarStyle:1];

      navigationBar3 = [(PhoneNavigationController *)v3 navigationBar];
      [navigationBar3 setTranslucent:1];

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
  viewControllers = [(PhoneNavigationController *)self viewControllers];
  if (![viewControllers count])
  {
    goto LABEL_5;
  }

  v3 = [viewControllers objectAtIndex:0];
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

- (void)setViewControllers:(id)controllers
{
  v4.receiver = self;
  v4.super_class = PhoneNavigationController;
  [(PhoneNavigationController *)&v4 setViewControllers:controllers];
  [(PhoneNavigationController *)self _updateRootViewController];
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if ([UIApp userInterfaceStyle] == 1)
  {
    [controllerCopy setEdgesForExtendedLayout:0];
  }

  v9.receiver = self;
  v9.super_class = PhoneNavigationController;
  [(PhoneNavigationController *)&v9 pushViewController:controllerCopy animated:animatedCopy];
  viewControllers = [(PhoneNavigationController *)self viewControllers];
  v8 = [viewControllers count];

  if (v8 == 1)
  {
    [(PhoneNavigationController *)self _updateRootViewController];
  }
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  if ([UIApp userInterfaceStyle] == 1)
  {
    [controllerCopy setEdgesForExtendedLayout:0];
  }

  v10.receiver = self;
  v10.super_class = PhoneNavigationController;
  [(PhoneNavigationController *)&v10 presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (BOOL)shouldSnapshot
{
  rootViewController = [(PhoneNavigationController *)self rootViewController];
  visibleViewController = [(PhoneNavigationController *)self visibleViewController];
  if (visibleViewController == rootViewController)
  {
    shouldSnapshot = [rootViewController shouldSnapshot];
  }

  else
  {
    shouldSnapshot = 0;
  }

  return shouldSnapshot;
}

- (void)prepareForSnapshot
{
  rootViewController = [(PhoneNavigationController *)self rootViewController];
  [rootViewController prepareForSnapshot];
}

- (void)handleURL:(id)l
{
  lCopy = l;
  rootViewController = [(PhoneNavigationController *)self rootViewController];
  if (objc_opt_respondsToSelector())
  {
    [rootViewController handleURL:lCopy];
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
  topViewController = [(PhoneNavigationController *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = topViewController;
    detailIndexPath = [v4 detailIndexPath];
    if (detailIndexPath)
    {
      v6 = detailIndexPath;
      displayedMessage2 = [v4 messageAtIndex:{objc_msgSend(detailIndexPath, "row")}];

      if (displayedMessage2)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  displayedMessage = [(PhoneNavigationController *)self displayedMessage];

  if (displayedMessage)
  {
    displayedMessage2 = [(PhoneNavigationController *)self displayedMessage];
  }

  else
  {
    displayedMessage2 = 0;
  }

LABEL_9:

  return displayedMessage2;
}

- (id)selectedMessageTableViewCell
{
  topViewController = [(PhoneNavigationController *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = topViewController;
    detailIndexPath = [v4 detailIndexPath];
    if (detailIndexPath)
    {
      v6 = detailIndexPath;
      tableView = [v4 tableView];
      v8 = [tableView cellForRowAtIndexPath:v6];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        displayedTableViewCell2 = v8;
      }

      else
      {
        displayedTableViewCell2 = 0;
      }

      if (displayedTableViewCell2)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  displayedTableViewCell = [(PhoneNavigationController *)self displayedTableViewCell];

  if (displayedTableViewCell)
  {
    displayedTableViewCell2 = [(PhoneNavigationController *)self displayedTableViewCell];
  }

  else
  {
    displayedTableViewCell2 = 0;
  }

LABEL_11:

  return displayedTableViewCell2;
}

- (void)playerController:(id)controller didChangeToCurrentTime:(float)time
{
  selectedMessageTableViewCell = [(PhoneNavigationController *)self selectedMessageTableViewCell];
  v7 = selectedMessageTableViewCell;
  if (selectedMessageTableViewCell)
  {
    timeCopy = time;
    playerControlsView = [selectedMessageTableViewCell playerControlsView];
    [playerControlsView setElapsedTime:timeCopy];

    selectedMessage = [(PhoneNavigationController *)self selectedMessage];
    v11 = selectedMessage;
    if (selectedMessage)
    {
      if ([selectedMessage shouldMarkAsReadForPlaybackCurrentTime:timeCopy])
      {
        voicemailController = [(PhoneNavigationController *)self voicemailController];
        v14 = v11;
        v13 = [NSArray arrayWithObjects:&v14 count:1];
        [voicemailController markMessagesAsRead:v13];

        if (([v7 isRead] & 1) == 0)
        {
          [v7 setRead:1];
        }
      }
    }
  }
}

- (void)playerController:(id)controller didChangeToDuration:(double)duration
{
  controllerCopy = controller;
  selectedMessageTableViewCell = [(PhoneNavigationController *)self selectedMessageTableViewCell];
  v7 = selectedMessageTableViewCell;
  if (selectedMessageTableViewCell)
  {
    playerControlsView = [selectedMessageTableViewCell playerControlsView];
    timelineSlider = [playerControlsView timelineSlider];
    [timelineSlider setDuration:duration];

    if ([controllerCopy status] == 1)
    {
      [controllerCopy duration];
      v11 = v10;
      playerControlsView2 = [v7 playerControlsView];
      [playerControlsView2 setDuration:v11];

      playerControlsView3 = [v7 playerControlsView];
      [playerControlsView3 setElapsedTime:0.0];

      playerControlsView4 = [v7 playerControlsView];
      [playerControlsView4 setEnabled:1];
    }
  }
}

- (void)playerController:(id)controller didChangeToStatus:(int64_t)status
{
  selectedMessageTableViewCell = [(PhoneNavigationController *)self selectedMessageTableViewCell];
  if (selectedMessageTableViewCell)
  {
    if (status == 2)
    {
      v9 = selectedMessageTableViewCell;
      [UIApp setIdleTimerDisabled:0];
    }

    else
    {
      if (status == 1)
      {
        v9 = selectedMessageTableViewCell;
        playerControlsView = [selectedMessageTableViewCell playerControlsView];
        v7 = playerControlsView;
        v8 = 1;
      }

      else
      {
        if (status)
        {
          goto LABEL_10;
        }

        v9 = selectedMessageTableViewCell;
        playerControlsView = [selectedMessageTableViewCell playerControlsView];
        v7 = playerControlsView;
        v8 = 0;
      }

      [playerControlsView setEnabled:v8];
    }

    selectedMessageTableViewCell = v9;
  }

LABEL_10:
}

- (void)playerController:(id)controller didChangeToTimeControlStatus:(int64_t)status
{
  selectedMessageTableViewCell = [(PhoneNavigationController *)self selectedMessageTableViewCell];
  if (selectedMessageTableViewCell)
  {
    if (status == 2)
    {
      v14 = selectedMessageTableViewCell;
      toolbar = [selectedMessageTableViewCell toolbar];
      playerControlButton = [toolbar playerControlButton];
      [playerControlButton setPlayerState:1 enabled:1];

      v8 = UIApp;
      v9 = 1;
    }

    else
    {
      if (status == 1)
      {
        v14 = selectedMessageTableViewCell;
        toolbar2 = [selectedMessageTableViewCell toolbar];
        playerControlButton2 = [toolbar2 playerControlButton];
        [playerControlButton2 setPlayerState:1 enabled:1];

LABEL_9:
        selectedMessageTableViewCell = v14;
        goto LABEL_10;
      }

      if (status)
      {
        goto LABEL_10;
      }

      v14 = selectedMessageTableViewCell;
      toolbar3 = [selectedMessageTableViewCell toolbar];
      playerControlButton3 = [toolbar3 playerControlButton];
      [playerControlButton3 setPlayerState:0 enabled:1];

      v8 = UIApp;
      v9 = 0;
    }

    [v8 setIdleTimerDisabled:v9];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)playerController:(id)controller willSeekToTime:(float)time
{
  controllerCopy = controller;
  selectedMessage = [(PhoneNavigationController *)self selectedMessage];
  dataURL = [selectedMessage dataURL];

  v7 = [controllerCopy URL];
  if (!v7 || (v8 = v7, [controllerCopy URL], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqual:", dataURL), v9, v8, (v10 & 1) == 0))
  {
    [controllerCopy setURL:dataURL];
  }
}

- (void)playerController:(id)controller didSeekToTime:(float)time
{
  selectedMessageTableViewCell = [(PhoneNavigationController *)self selectedMessageTableViewCell];
  if (selectedMessageTableViewCell)
  {
    v7 = selectedMessageTableViewCell;
    playerControlsView = [selectedMessageTableViewCell playerControlsView];
    [playerControlsView setElapsedTime:0 animated:time];

    selectedMessageTableViewCell = v7;
  }
}

@end