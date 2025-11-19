@interface UISplitViewController
- (BOOL)shouldSnapshot;
- (void)mf_setColumn:(int64_t)a3 visible:(BOOL)a4 animated:(BOOL)a5 completion:(id)a6;
@end

@implementation UISplitViewController

- (void)mf_setColumn:(int64_t)a3 visible:(BOOL)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v7 = a4;
  v10 = a6;
  v11 = v10;
  if (v6)
  {
    if (v7)
    {
      [(UISplitViewController *)self showColumn:a3];
    }

    else
    {
      [(UISplitViewController *)self hideColumn:a3];
    }

    v13 = [(UISplitViewController *)self transitionCoordinator];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10025A24C;
    v21[3] = &unk_10064E4B0;
    v14 = v11;
    v22 = v14;
    v15 = [v13 animateAlongsideTransition:&stru_100656AF0 completion:v21];

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
    v20 = v7;
    v17[4] = self;
    v19 = a3;
    v18 = v10;
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
  v2 = [(UISplitViewController *)self viewControllers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        v5 &= [*(*(&v8 + 1) + 8 * i) shouldSnapshot];
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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