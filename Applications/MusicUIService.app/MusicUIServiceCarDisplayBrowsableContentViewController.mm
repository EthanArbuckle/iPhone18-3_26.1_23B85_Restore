@interface MusicUIServiceCarDisplayBrowsableContentViewController
- (id)preferredFocusEnvironments;
- (void)_performSwitchToNowPlayingForBundleID:(id)d showNowPlaying:(BOOL)playing;
- (void)saveCurrentStack;
- (void)switchToState:(id)state;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MusicUIServiceCarDisplayBrowsableContentViewController

- (void)switchToState:(id)state
{
  stateCopy = state;
  associatedBundleID = [stateCopy associatedBundleID];
  if (associatedBundleID)
  {
    stateName = [stateCopy stateName];
    v7 = ([stateName isEqualToString:@"nowplaying"] & 1) != 0 || MRMediaRemoteApplicationSupportsImmediatePlayback() != 0;

    traitCollection = [(MusicUIServiceCarDisplayBrowsableContentViewController *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 3)
    {
      [(MusicUIServiceCarDisplayBrowsableContentViewController *)self _performSwitchToNowPlayingForBundleID:associatedBundleID showNowPlaying:v7];
    }

    else
    {
      objc_initWeak(&location, self);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100002A28;
      v12[3] = &unk_10000C390;
      objc_copyWeak(&v14, &location);
      v13 = associatedBundleID;
      v15 = v7;
      v10 = objc_retainBlock(v12);
      needsSwitch = self->_needsSwitch;
      self->_needsSwitch = v10;

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = MusicUIServiceCarDisplayBrowsableContentViewController;
  [(MusicUIServiceCarDisplayBrowsableContentViewController *)&v6 traitCollectionDidChange:change];
  traitCollection = [(MusicUIServiceCarDisplayBrowsableContentViewController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 3)
  {
    needsSwitch = self->_needsSwitch;

    if (!needsSwitch)
    {
      return;
    }

    (*(self->_needsSwitch + 2))();
    traitCollection = self->_needsSwitch;
    self->_needsSwitch = 0;
  }
}

- (void)_performSwitchToNowPlayingForBundleID:(id)d showNowPlaying:(BOOL)playing
{
  playingCopy = playing;
  dCopy = d;
  if ([dCopy isEqualToString:self->_displayedViewControllerKey])
  {
    if (playingCopy)
    {
      [(MCDPlayableContentViewController *)self->_nowPlayingViewController refreshNavigationStackForLaunch];
    }
  }

  else
  {
    [(MusicUIServiceCarDisplayBrowsableContentViewController *)self saveCurrentStack];
    objc_storeStrong(&self->_displayedViewControllerKey, d);
    [(MCDPlayableContentViewController *)self->_nowPlayingViewController willMoveToParentViewController:0];
    view = [(MCDPlayableContentViewController *)self->_nowPlayingViewController view];
    [view removeFromSuperview];

    [(MCDPlayableContentViewController *)self->_nowPlayingViewController removeFromParentViewController];
    v8 = [MCDPlayableContentViewController alloc];
    v9 = [(NSMutableDictionary *)self->_bundleIDsToStacks objectForKey:self->_displayedViewControllerKey];
    v10 = [v8 initWithBundleID:dCopy stack:v9];
    nowPlayingViewController = self->_nowPlayingViewController;
    self->_nowPlayingViewController = v10;

    view2 = [(MusicUIServiceCarDisplayBrowsableContentViewController *)self view];
    view3 = [(MCDPlayableContentViewController *)self->_nowPlayingViewController view];
    [view2 bounds];
    [view3 setFrame:?];

    [(MusicUIServiceCarDisplayBrowsableContentViewController *)self addChildViewController:self->_nowPlayingViewController];
    view4 = [(MCDPlayableContentViewController *)self->_nowPlayingViewController view];
    [view2 addSubview:view4];

    v15 = self->_nowPlayingViewController;
    if (playingCopy)
    {
      [(MCDPlayableContentViewController *)v15 refreshNavigationStackForLaunch];
    }

    else
    {
      [(MCDPlayableContentViewController *)v15 didMoveToParentViewController:self];
      if (!self->_firstLaunchCompleted)
      {
        [(MCDPlayableContentViewController *)self->_nowPlayingViewController refreshNavigationStackForLaunch];
      }

      [(MusicUIServiceCarDisplayBrowsableContentViewController *)self setNeedsFocusUpdate];
    }

    self->_firstLaunchCompleted = 1;
  }
}

- (void)saveCurrentStack
{
  if (!self->_bundleIDsToStacks)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    bundleIDsToStacks = self->_bundleIDsToStacks;
    self->_bundleIDsToStacks = v3;
  }

  nowPlayingViewController = self->_nowPlayingViewController;
  if (nowPlayingViewController && self->_displayedViewControllerKey)
  {
    currentStack = [(MCDPlayableContentViewController *)nowPlayingViewController currentStack];
    v7 = self->_bundleIDsToStacks;
    displayedViewControllerKey = self->_displayedViewControllerKey;
    v9 = currentStack;
    if (currentStack)
    {
      [(NSMutableDictionary *)v7 setObject:currentStack forKey:displayedViewControllerKey];
    }

    else
    {
      [(NSMutableDictionary *)v7 removeObjectForKey:displayedViewControllerKey];
    }
  }
}

- (id)preferredFocusEnvironments
{
  if (self->_nowPlayingViewController)
  {
    nowPlayingViewController = self->_nowPlayingViewController;
    preferredFocusEnvironments = [NSArray arrayWithObjects:&nowPlayingViewController count:1];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = MusicUIServiceCarDisplayBrowsableContentViewController;
    preferredFocusEnvironments = [(MusicUIServiceCarDisplayBrowsableContentViewController *)&v4 preferredFocusEnvironments];
  }

  return preferredFocusEnvironments;
}

@end