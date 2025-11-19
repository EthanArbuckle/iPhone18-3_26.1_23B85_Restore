@interface PHVideoOverlayViewController
- (BOOL)isModeEnabled:(int64_t)a3;
- (BOOL)isShowingOverlayForRemoteState;
- (BOOL)isShowingPippedIconViews;
- (BOOL)shouldShowIconViewsWhenPipped;
- (PHVideoOverlayViewControllerDelegate)delegate;
- (void)disableVideoOverlayModes;
- (void)handlePIPControllerStateDidChangeNotification:(id)a3;
- (void)hideVideoOverlayAnimated:(BOOL)a3;
- (void)setVideoOverlayEnabled:(BOOL)a3 forMode:(int64_t)a4;
- (void)setVideoOverlayWithMode:(int64_t)a3 animated:(BOOL)a4;
- (void)showNextVideoOverlayMode;
- (void)showVideoOverlayWithContentView:(id)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
@end

@implementation PHVideoOverlayViewController

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = PHVideoOverlayViewController;
  [(PHVideoOverlayViewController *)&v26 viewDidLoad];
  v3 = objc_alloc_init(NSMutableArray);
  [(PHVideoOverlayViewController *)self setModesPriorityQueue:v3];

  v4 = [(PHVideoOverlayViewController *)self view];
  [v4 setAlpha:0.0];

  v5 = objc_alloc_init(PHVideoOverlayInsulatorView);
  [(PHVideoOverlayViewController *)self setInsulatorView:v5];

  v6 = [(PHVideoOverlayViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(PHVideoOverlayViewController *)self insulatorView];
  [v15 setBounds:{v8, v10, v12, v14}];

  v16 = [(PHVideoOverlayViewController *)self view];
  [v16 center];
  v18 = v17;
  v20 = v19;
  v21 = [(PHVideoOverlayViewController *)self insulatorView];
  [v21 setCenter:{v18, v20}];

  v22 = [(PHVideoOverlayViewController *)self insulatorView];
  [v22 setAutoresizingMask:18];

  v23 = [(PHVideoOverlayViewController *)self view];
  v24 = [(PHVideoOverlayViewController *)self insulatorView];
  [v23 addSubview:v24];

  v25 = +[NSNotificationCenter defaultCenter];
  [v25 addObserver:self selector:"handlePIPControllerStateDidChangeNotification:" name:@"PHPIPControllerStateDidChangeNotification" object:0];
}

- (void)setVideoOverlayEnabled:(BOOL)a3 forMode:(int64_t)a4
{
  v5 = a3;
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromBOOL();
    v9 = [NSNumber numberWithInteger:a4];
    *buf = 138412546;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "enabled %@ for mode: %@", buf, 0x16u);
  }

  if (v5)
  {
    v10 = [(PHVideoOverlayViewController *)self modesPriorityQueue];
    v11 = [NSNumber numberWithInteger:a4];
    v12 = [v10 containsObject:v11];

    if ((v12 & 1) == 0)
    {
      v13 = [(PHVideoOverlayViewController *)self modesPriorityQueue];
      v14 = [NSNumber numberWithInteger:a4];
      [v13 addObject:v14];

      v15 = [(PHVideoOverlayViewController *)self modesPriorityQueue];
      v16 = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:1];
      v22 = v16;
      v17 = [NSArray arrayWithObjects:&v22 count:1];
      [v15 sortUsingDescriptors:v17];
    }
  }

  else if (-[PHVideoOverlayViewController currentVideoOverlayMode](self, "currentVideoOverlayMode") == a4 && (-[PHVideoOverlayViewController modesPriorityQueue](self, "modesPriorityQueue"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 count], v18, v19 == 1))
  {
    [(PHVideoOverlayViewController *)self disableVideoOverlayModes];
  }

  else
  {
    v20 = [(PHVideoOverlayViewController *)self modesPriorityQueue];
    v21 = [NSNumber numberWithInteger:a4];
    [v20 removeObject:v21];
  }

  [(PHVideoOverlayViewController *)self showNextVideoOverlayMode];
}

- (BOOL)isModeEnabled:(int64_t)a3
{
  v4 = [(PHVideoOverlayViewController *)self modesPriorityQueue];
  v5 = [NSNumber numberWithInteger:a3];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (BOOL)isShowingOverlayForRemoteState
{
  if (![(PHVideoOverlayViewController *)self currentVideoOverlayMode])
  {
    return 0;
  }

  if ([(PHVideoOverlayViewController *)self currentVideoOverlayMode]!= 6)
  {
    return 1;
  }

  v3 = [(PHVideoOverlayViewController *)self modesPriorityQueue];
  v4 = [v3 count] != 1;

  return v4;
}

- (void)showNextVideoOverlayMode
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PHVideoOverlayViewController *)self modesPriorityQueue];
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "queue: %@", &v10, 0xCu);
  }

  v5 = [(PHVideoOverlayViewController *)self modesPriorityQueue];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(PHVideoOverlayViewController *)self modesPriorityQueue];
    v8 = [v7 lastObject];
    v9 = [v8 integerValue];

    if ([(PHVideoOverlayViewController *)self currentVideoOverlayMode]!= v9)
    {
      [(PHVideoOverlayViewController *)self setVideoOverlayWithMode:v9 animated:[(PHVideoOverlayViewController *)self currentVideoOverlayMode]== 0];
    }
  }

  else
  {
    [(PHVideoOverlayViewController *)self hideVideoOverlayAnimated:1];
  }
}

- (void)setVideoOverlayWithMode:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(PHVideoOverlayViewController *)self setCurrentVideoOverlayMode:a3];
  v6 = +[PHPIPController defaultPIPController];
  if ([v6 isPipped])
  {
    v7 = [(PHVideoOverlayViewController *)self shouldShowIconViewsWhenPipped];
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_100004F84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [NSNumber numberWithInteger:[(PHVideoOverlayViewController *)self currentVideoOverlayMode]];
    v28 = 138412290;
    v29 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "mode: %@", &v28, 0xCu);
  }

  v10 = [(PHVideoOverlayViewController *)self currentVideoOverlayMode];
  if (v10 > 3)
  {
    if (v10 > 5)
    {
      if (v10 == 6 || v10 == 7)
      {
        v11 = [[PHVideoOverlayContentViewTitle alloc] initWithTitle:0];
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    if (v10 == 4)
    {
      v19 = [PHVideoOverlayContentViewActivity alloc];
      if (v7)
      {
        v20 = &stru_100361FD0;
        v21 = 101;
      }

      else
      {
        v8 = +[NSBundle mainBundle];
        v20 = [v8 localizedStringForKey:@"VIDEO_RECONNECTING_TITLE" value:&stru_100361FD0 table:@"InCallService"];
        v21 = 100;
      }

      v22 = [(PHVideoOverlayContentViewActivity *)v19 initWithTitle:v20 indicatorStyle:v21];
      [(PHVideoOverlayViewController *)self setContentView:v22];

      if (v7)
      {
        goto LABEL_23;
      }

LABEL_17:
      goto LABEL_23;
    }

    v12 = [PHVideoOverlayContentViewTitle alloc];
    v13 = +[NSBundle mainBundle];
    v8 = v13;
    v14 = @"CAMERA_UNAVAILABLE_OVERLAY";
LABEL_16:
    v15 = [v13 localizedStringForKey:v14 value:&stru_100361FD0 table:@"InCallService"];
    v16 = [(PHVideoOverlayContentViewTitle *)v12 initWithTitle:v15];
    [(PHVideoOverlayViewController *)self setContentView:v16];

    goto LABEL_17;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      if (!v7)
      {
        v23 = [PHVideoOverlayContentViewMessage alloc];
        v17 = +[NSBundle mainBundle];
        v24 = [v17 localizedStringForKey:@"VIDEO_DEGRADED_TITLE" value:&stru_100361FD0 table:@"InCallService"];
        v25 = +[NSBundle mainBundle];
        v26 = [v25 localizedStringForKey:@"VIDEO_DEGRADED_MESSAGE" value:&stru_100361FD0 table:@"InCallService"];
        v27 = [(PHVideoOverlayContentViewMessage *)v23 initWithTitle:v24 message:v26];
        [(PHVideoOverlayViewController *)self setContentView:v27];

        goto LABEL_22;
      }

      v11 = [[PHVideoOverlayContentViewIcon alloc] initWithSymbolType:43];
LABEL_21:
      v17 = v11;
      [(PHVideoOverlayViewController *)self setContentView:v11];
LABEL_22:

      goto LABEL_23;
    }

    v12 = [PHVideoOverlayContentViewTitle alloc];
    v13 = +[NSBundle mainBundle];
    v8 = v13;
    v14 = @"PAUSE_OVERLAY";
    goto LABEL_16;
  }

  if (!v10)
  {
    [(PHVideoOverlayViewController *)self setContentView:0];
    goto LABEL_23;
  }

  if (v10 == 1)
  {
    v11 = objc_alloc_init(PHVideoOverlayContentView);
    goto LABEL_21;
  }

LABEL_23:
  v18 = [(PHVideoOverlayViewController *)self contentView];
  [(PHVideoOverlayViewController *)self showVideoOverlayWithContentView:v18 animated:v4];
}

- (void)showVideoOverlayWithContentView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "view: %@", buf, 0xCu);
  }

  if (v6)
  {
    v8 = [(PHVideoOverlayViewController *)self insulatorView];
    [v8 setVideoOverlayContentView:v6 animated:v4];

    v9 = [(PHVideoOverlayViewController *)self view];
    [v9 alpha];
    v11 = v10;

    if (v11 != 1.0)
    {
      v12 = sub_100004F84();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "animate in the overlay", buf, 2u);
      }

      v13 = [(PHVideoOverlayViewController *)self delegate];
      [v13 videoOverlayViewController:self isShowingOverlay:1];

      v14 = 0.150000006;
      if (!v4)
      {
        v14 = 0.0;
      }

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100043A54;
      v15[3] = &unk_100356988;
      v15[4] = self;
      [UIView animateWithDuration:4 delay:v15 options:0 animations:v14 completion:0.0];
    }
  }
}

- (void)hideVideoOverlayAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHVideoOverlayViewController *)self view];
  [v5 alpha];
  v7 = v6;

  if (v7 != 0.0)
  {
    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "animate out the overlay", buf, 2u);
    }

    v9 = 0.150000006;
    if (!v3)
    {
      v9 = 0.0;
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100043BF4;
    v11[3] = &unk_100356988;
    v11[4] = self;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100043C3C;
    v10[3] = &unk_1003569B0;
    v10[4] = self;
    [UIView animateWithDuration:4 delay:v11 options:v10 animations:v9 completion:0.0];
  }
}

- (void)disableVideoOverlayModes
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "removing all the overlays from queue", v5, 2u);
  }

  v4 = [(PHVideoOverlayViewController *)self modesPriorityQueue];
  [v4 removeAllObjects];

  [(PHVideoOverlayViewController *)self setCurrentVideoOverlayMode:0];
  [(PHVideoOverlayViewController *)self showNextVideoOverlayMode];
}

- (void)handlePIPControllerStateDidChangeNotification:(id)a3
{
  v4 = +[PHPIPController defaultPIPController];
  v5 = [v4 isPipped];

  if (v5 != [(PHVideoOverlayViewController *)self isShowingPippedIconViews])
  {
    if ([(PHVideoOverlayViewController *)self shouldShowIconViewsWhenPipped])
    {
      v6 = [(PHVideoOverlayViewController *)self currentVideoOverlayMode];
      if (v6 == 4 || v6 == 2)
      {
        v7 = [(PHVideoOverlayViewController *)self currentVideoOverlayMode];

        [(PHVideoOverlayViewController *)self setVideoOverlayWithMode:v7 animated:1];
      }
    }
  }
}

- (BOOL)shouldShowIconViewsWhenPipped
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom] == 0;

  return v3;
}

- (BOOL)isShowingPippedIconViews
{
  v3 = [(PHVideoOverlayViewController *)self currentVideoOverlayMode];
  if (v3 == 4)
  {
    v6 = [(PHVideoOverlayViewController *)self contentView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v4 = [(PHVideoOverlayViewController *)self contentView];
      v8 = [v4 title];
      v5 = [v8 length] == 0;

      goto LABEL_6;
    }

LABEL_7:
    v5 = 0;
    return v5 & 1;
  }

  if (v3 != 2)
  {
    goto LABEL_7;
  }

  v4 = [(PHVideoOverlayViewController *)self contentView];
  objc_opt_class();
  v5 = objc_opt_isKindOfClass();
LABEL_6:

  return v5 & 1;
}

- (PHVideoOverlayViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end