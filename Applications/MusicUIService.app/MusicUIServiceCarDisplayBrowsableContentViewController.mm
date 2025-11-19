@interface MusicUIServiceCarDisplayBrowsableContentViewController
- (id)preferredFocusEnvironments;
- (void)_performSwitchToNowPlayingForBundleID:(id)a3 showNowPlaying:(BOOL)a4;
- (void)saveCurrentStack;
- (void)switchToState:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MusicUIServiceCarDisplayBrowsableContentViewController

- (void)switchToState:(id)a3
{
  v4 = a3;
  v5 = [v4 associatedBundleID];
  if (v5)
  {
    v6 = [v4 stateName];
    v7 = ([v6 isEqualToString:@"nowplaying"] & 1) != 0 || MRMediaRemoteApplicationSupportsImmediatePlayback() != 0;

    v8 = [(MusicUIServiceCarDisplayBrowsableContentViewController *)self traitCollection];
    v9 = [v8 userInterfaceIdiom];

    if (v9 == 3)
    {
      [(MusicUIServiceCarDisplayBrowsableContentViewController *)self _performSwitchToNowPlayingForBundleID:v5 showNowPlaying:v7];
    }

    else
    {
      objc_initWeak(&location, self);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100002A28;
      v12[3] = &unk_10000C390;
      objc_copyWeak(&v14, &location);
      v13 = v5;
      v15 = v7;
      v10 = objc_retainBlock(v12);
      needsSwitch = self->_needsSwitch;
      self->_needsSwitch = v10;

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = MusicUIServiceCarDisplayBrowsableContentViewController;
  [(MusicUIServiceCarDisplayBrowsableContentViewController *)&v6 traitCollectionDidChange:a3];
  v4 = [(MusicUIServiceCarDisplayBrowsableContentViewController *)self traitCollection];
  if ([v4 userInterfaceIdiom] == 3)
  {
    needsSwitch = self->_needsSwitch;

    if (!needsSwitch)
    {
      return;
    }

    (*(self->_needsSwitch + 2))();
    v4 = self->_needsSwitch;
    self->_needsSwitch = 0;
  }
}

- (void)_performSwitchToNowPlayingForBundleID:(id)a3 showNowPlaying:(BOOL)a4
{
  v4 = a4;
  v16 = a3;
  if ([v16 isEqualToString:self->_displayedViewControllerKey])
  {
    if (v4)
    {
      [(MCDPlayableContentViewController *)self->_nowPlayingViewController refreshNavigationStackForLaunch];
    }
  }

  else
  {
    [(MusicUIServiceCarDisplayBrowsableContentViewController *)self saveCurrentStack];
    objc_storeStrong(&self->_displayedViewControllerKey, a3);
    [(MCDPlayableContentViewController *)self->_nowPlayingViewController willMoveToParentViewController:0];
    v7 = [(MCDPlayableContentViewController *)self->_nowPlayingViewController view];
    [v7 removeFromSuperview];

    [(MCDPlayableContentViewController *)self->_nowPlayingViewController removeFromParentViewController];
    v8 = [MCDPlayableContentViewController alloc];
    v9 = [(NSMutableDictionary *)self->_bundleIDsToStacks objectForKey:self->_displayedViewControllerKey];
    v10 = [v8 initWithBundleID:v16 stack:v9];
    nowPlayingViewController = self->_nowPlayingViewController;
    self->_nowPlayingViewController = v10;

    v12 = [(MusicUIServiceCarDisplayBrowsableContentViewController *)self view];
    v13 = [(MCDPlayableContentViewController *)self->_nowPlayingViewController view];
    [v12 bounds];
    [v13 setFrame:?];

    [(MusicUIServiceCarDisplayBrowsableContentViewController *)self addChildViewController:self->_nowPlayingViewController];
    v14 = [(MCDPlayableContentViewController *)self->_nowPlayingViewController view];
    [v12 addSubview:v14];

    v15 = self->_nowPlayingViewController;
    if (v4)
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
    v6 = [(MCDPlayableContentViewController *)nowPlayingViewController currentStack];
    v7 = self->_bundleIDsToStacks;
    displayedViewControllerKey = self->_displayedViewControllerKey;
    v9 = v6;
    if (v6)
    {
      [(NSMutableDictionary *)v7 setObject:v6 forKey:displayedViewControllerKey];
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
    v2 = [NSArray arrayWithObjects:&nowPlayingViewController count:1];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = MusicUIServiceCarDisplayBrowsableContentViewController;
    v2 = [(MusicUIServiceCarDisplayBrowsableContentViewController *)&v4 preferredFocusEnvironments];
  }

  return v2;
}

@end