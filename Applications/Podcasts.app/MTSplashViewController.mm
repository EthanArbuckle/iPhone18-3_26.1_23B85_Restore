@interface MTSplashViewController
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MTSplashViewController

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = MTSplashViewController;
  [(MTSplashViewController *)&v15 viewDidLoad];
  v3 = objc_opt_new();
  [(MTSplashViewController *)self setVc:v3];

  v4 = objc_opt_new();
  v5 = [UINavigationController alloc];
  v6 = [(MTSplashViewController *)self vc];
  v7 = [v5 initWithRootViewController:v6];

  [v4 setTabBarHidden:1 animated:0];
  v16 = v7;
  v8 = [NSArray arrayWithObjects:&v16 count:1];
  [v4 setViewControllers:v8];

  [(MTSplashViewController *)self addChildViewController:v4];
  view = [v4 view];
  view2 = [(MTSplashViewController *)self view];
  [view2 bounds];
  [view setFrame:?];

  view3 = [(MTSplashViewController *)self view];
  view4 = [v4 view];
  [view3 addSubview:view4];

  [v4 didMoveToParentViewController:self];
  view5 = [(MTSplashViewController *)self view];
  v14 = +[UIColor systemBackgroundColor];
  [view5 setBackgroundColor:v14];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(MTSplashViewController *)self setVisible:1];
  v7.receiver = self;
  v7.super_class = MTSplashViewController;
  [(MTSplashViewController *)&v7 viewWillAppear:appearCopy];
  v5 = dispatch_time(0, 1500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100143E2C;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_after(v5, &_dispatch_main_q, block);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(MTSplashViewController *)self setVisible:0];
  v5.receiver = self;
  v5.super_class = MTSplashViewController;
  [(MTSplashViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)viewDidLayoutSubviews
{
  v62.receiver = self;
  v62.super_class = MTSplashViewController;
  [(MTSplashViewController *)&v62 viewDidLayoutSubviews];
  spinner = [(MTSplashViewController *)self spinner];

  if (spinner)
  {
    v4 = [(MTSplashViewController *)self vc];
    view = [v4 view];
    [view bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v61 = v12;

    if ([(MTSplashViewController *)self isHorizontallyCompact])
    {
      v13 = v7 + 15.0;
      v14 = v9 + 0.0;
      v15 = v11 + -30.0;
    }

    else
    {
      v16 = [(MTSplashViewController *)self vc];
      view2 = [v16 view];
      [view2 bounds];
      v60 = 0;
      IMRectCenteredXInRectScale();
      v13 = v18;
      v14 = v19;
      v15 = v20;
      v61 = v21;
    }

    spinner2 = [(MTSplashViewController *)self spinner];
    [spinner2 frame];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    label = [(MTSplashViewController *)self label];
    [label frame];

    label2 = [(MTSplashViewController *)self label];
    v63.origin.x = v13;
    v63.origin.y = v14;
    v63.size.width = v15;
    v63.size.height = v61;
    Width = CGRectGetWidth(v63);
    v64.origin.y = v14;
    v34 = Width;
    v64.origin.x = v13;
    v64.size.width = v15;
    v64.size.height = v61;
    Height = CGRectGetHeight(v64);
    v65.origin.x = v24;
    v65.origin.y = v26;
    v65.size.width = v28;
    v65.size.height = v30;
    [label2 sizeThatFits:{v34, Height - CGRectGetHeight(v65) + -15.0}];

    v66.origin.x = v24;
    v66.origin.y = v26;
    v66.size.width = v28;
    v66.size.height = v30;
    CGRectGetHeight(v66);
    IMRectCenteredYInRectScale();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    IMRectCenteredXInRectScale();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v67.origin.x = v37;
    v67.origin.y = v39;
    v67.size.width = v41;
    v67.size.height = v43;
    MinY = CGRectGetMinY(v67);
    spinner3 = [(MTSplashViewController *)self spinner];
    [spinner3 setFrame:{v45, MinY, v47, v49}];

    IMRectCenteredXInRectScale();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v68.origin.x = v45;
    v68.origin.y = MinY;
    v68.size.width = v47;
    v68.size.height = v49;
    v58 = CGRectGetMaxY(v68) + 15.0;
    label3 = [(MTSplashViewController *)self label];
    [label3 setFrame:{v53, v58, v55, v57}];
  }
}

@end