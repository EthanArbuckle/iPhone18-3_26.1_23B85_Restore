@interface UISplitViewController
- (BOOL)shouldSnapshot;
- (void)mf_setColumn:(int64_t)column visible:(BOOL)visible animated:(BOOL)animated completion:(id)completion;
@end

@implementation UISplitViewController

- (void)mf_setColumn:(int64_t)column visible:(BOOL)visible animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  visibleCopy = visible;
  completionCopy = completion;
  v11 = completionCopy;
  if (animatedCopy)
  {
    if (visibleCopy)
    {
      [(UISplitViewController *)self showColumn:column];
    }

    else
    {
      [(UISplitViewController *)self hideColumn:column];
    }

    transitionCoordinator = [(UISplitViewController *)self transitionCoordinator];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10025A24C;
    v21[3] = &unk_10064E4B0;
    v14 = v11;
    v22 = v14;
    v15 = [transitionCoordinator animateAlongsideTransition:&stru_100656AF0 completion:v21];

    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v16 = 1;
    }

    if ((v16 & 1) == 0)
    {
      v14[2](v14, 1);
    }

    v12 = v22;
  }

  else
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10025A268;
    v17[3] = &unk_100656B18;
    v20 = visibleCopy;
    v17[4] = self;
    columnCopy = column;
    v18 = completionCopy;
    [UIView performWithoutAnimation:v17];
    v12 = v18;
  }
}

- (BOOL)shouldSnapshot
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  viewControllers = [(UISplitViewController *)self viewControllers];
  v3 = [viewControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    v5 = 1;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(viewControllers);
        }

        v5 &= [*(*(&v8 + 1) + 8 * i) shouldSnapshot];
      }

      v3 = [viewControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

@end