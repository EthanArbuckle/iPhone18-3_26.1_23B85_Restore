@interface PBAStackViewController
- (PBAStackViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PBAStackViewController)initWithRootViewController:(id)a3;
- (UIViewController)visibleViewController;
- (void)_setViewControllers:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)didReceiveMemoryWarning;
- (void)loadView;
- (void)showViewController:(id)a3 sender:(id)a4;
- (void)viewDidLoad;
@end

@implementation PBAStackViewController

- (PBAStackViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = PBAStackViewController;
  v4 = [(PBAStackViewController *)&v8 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    viewControllers = v4->_viewControllers;
    v4->_viewControllers = &__NSArray0__struct;
  }

  return v5;
}

- (PBAStackViewController)initWithRootViewController:(id)a3
{
  v4 = a3;
  v5 = [(PBAStackViewController *)self initWithNibName:0 bundle:0];
  [(PBAStackViewController *)v5 pushViewController:v4 animated:0 completion:0];

  return v5;
}

- (void)loadView
{
  v3 = [UIView alloc];
  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];
  containerView = self->_containerView;
  self->_containerView = v5;

  v7 = self->_containerView;

  [(PBAStackViewController *)self setView:v7];
}

- (void)_setViewControllers:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v35 = a4;
  v7 = a3;
  v40 = a5;
  v8 = self->_viewControllers;
  v9 = [v7 copy];
  v10 = [(PBAStackViewController *)self topViewController];
  v39 = v7;
  v11 = [v7 lastObject];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v36 = v9;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v71 objects:v76 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v72;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v72 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v71 + 1) + 8 * i);
        if (![(NSArray *)v8 containsObject:v18])
        {
          [(PBAStackViewController *)self addChildViewController:v18];
          if (v18 == v11)
          {
            v15 = 1;
          }

          else
          {
            [v18 didMoveToParentViewController:self];
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v71 objects:v76 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v19 = v8;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v67 objects:v75 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v68;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v68 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v67 + 1) + 8 * j);
        if (([v12 containsObject:v24] & 1) == 0)
        {
          [v24 willMoveToParentViewController:0];
          if (v24 != v10)
          {
            [v24 removeFromParentViewController];
          }
        }
      }

      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v67 objects:v75 count:16];
    }

    while (v21);
  }

  objc_storeStrong(&self->_viewControllers, v36);
  if (v10 != v11)
  {
    v25 = [v11 view];
    [(UIView *)self->_containerView bounds];
    [v25 setFrame:?];
    [v10 view];
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_100004BE8;
    v32 = v65[3] = &unk_10001C628;
    v66 = v32;
    v34 = objc_retainBlock(v65);
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_100004BF4;
    v63[3] = &unk_10001C628;
    v37 = v25;
    v64 = v37;
    v33 = objc_retainBlock(v63);
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_100004C00;
    v60[3] = &unk_10001C650;
    v62 = 0;
    v26 = v10;
    v61 = v26;
    v38 = objc_retainBlock(v60);
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100004C18;
    v56[3] = &unk_10001C678;
    v59 = v15 & 1;
    v27 = v11;
    v57 = v27;
    v58 = self;
    v28 = objc_retainBlock(v56);
    if (!v35)
    {
      v29 = v32;
      if (v26)
      {
        (v38[2])();
        [v32 removeFromSuperview];
        if (v40)
        {
          v40[2]();
        }
      }

      if (v27)
      {
        [(UIView *)self->_containerView addSubview:v37];
        (v28[2])(v28);
        if (v40)
        {
          v40[2]();
        }
      }

      goto LABEL_42;
    }

    if (v26 && v27)
    {
      [v37 setAlpha:1.0];
      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_100004C38;
      v52[3] = &unk_10001C6E0;
      v53 = v38;
      v54 = v28;
      v55 = v40;
      [(PBAStackViewController *)self transitionFromViewController:v26 toViewController:v27 duration:5242880 options:&stru_10001C6B8 animations:v52 completion:0.5];

      v29 = v32;
    }

    else
    {
      v29 = v32;
      if (!v26 || v27)
      {
        if (v26 || !v27)
        {
          goto LABEL_42;
        }

        v31 = [(PBAStackViewController *)self view];
        [v31 addSubview:v37];

        [v37 setAlpha:0.0];
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_100004D18;
        v44[3] = &unk_10001C708;
        v45 = v33;
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_100004D28;
        v41[3] = &unk_10001C758;
        v42 = v28;
        v43 = v40;
        [UIView animateWithDuration:v44 animations:v41 completion:0.5];

        v30 = v45;
      }

      else
      {
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_100004CA4;
        v50[3] = &unk_10001C708;
        v51 = v34;
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_100004CB4;
        v46[3] = &unk_10001C730;
        v48 = v38;
        v47 = v32;
        v49 = v40;
        [UIView animateWithDuration:v50 animations:v46 completion:0.5];

        v30 = v51;
      }
    }

LABEL_42:
  }
}

- (UIViewController)visibleViewController
{
  v2 = [(PBAStackViewController *)self topViewController];
  v3 = [v2 presentedViewController];
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = v4;

      v4 = [v5 presentedViewController];

      v2 = v5;
    }

    while (v4);
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

- (void)showViewController:(id)a3 sender:(id)a4
{
  v5 = a3;
  [(PBAStackViewController *)self pushViewController:v5 animated:+[UIView completion:"areAnimationsEnabled"], 0];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PBAStackViewController;
  [(PBAStackViewController *)&v8 viewDidLoad];
  v3 = [(PBAStackViewController *)self topViewController];
  v4 = [v3 parentViewController];

  if (!v4)
  {
    [(PBAStackViewController *)self addChildViewController:v3];
  }

  v5 = [v3 view];
  [(UIView *)self->_containerView bounds];
  [v5 setFrame:?];

  containerView = self->_containerView;
  v7 = [v3 view];
  [(UIView *)containerView addSubview:v7];

  if (!v4)
  {
    [v3 didMoveToParentViewController:self];
  }
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = PBAStackViewController;
  [(PBAStackViewController *)&v2 didReceiveMemoryWarning];
}

@end