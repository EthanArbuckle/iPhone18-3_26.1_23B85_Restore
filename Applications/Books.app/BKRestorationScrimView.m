@interface BKRestorationScrimView
- (BKRestorationScrimView)initWithAssetID:(id)a3 window:(id)a4;
- (UIWindow)window;
- (void)_setupMaskView:(id)a3 spinner:(id)a4;
- (void)removeAnimated;
- (void)removeEventually;
- (void)show;
@end

@implementation BKRestorationScrimView

- (BKRestorationScrimView)initWithAssetID:(id)a3 window:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 bounds];
  v56.receiver = self;
  v56.super_class = BKRestorationScrimView;
  v8 = [(BKRestorationScrimView *)&v56 initWithFrame:?];
  objc_storeWeak(&v8->_window, v6);
  v9 = +[NSNotificationCenter defaultCenter];
  v8->_observationToken = [v9 _addObserver:v8 selector:"_contentDidFinishRestoring:" name:@"BKBookReaderContentLayoutFinished" object:0 options:2048];

  v10 = v8;
  [(BKRestorationScrimView *)v10 setAutoresizingMask:18];
  v11 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v54 = +[BEPageSnapshotCache restorationImageAssetID];
  v12 = [v54 isEqualToString:v7];

  v13 = v10;
  if (v12)
  {
    v14 = +[BEPageSnapshotCache restorationImageURL];
    v15 = [NSData dataWithContentsOfURL:v14];

    v13 = v10;
    if (!v15)
    {
LABEL_34:

      goto LABEL_35;
    }

    v16 = +[BEPageSnapshotCache restorationImageAppearance];
    if (v16 <= 2)
    {
      if (v16)
      {
        if (v16 != 1)
        {
          if (v16 != 2)
          {
            goto LABEL_25;
          }

          v17 = [v6 traitCollection];
          v18 = [v17 userInterfaceStyle];

          if (v18 != 1)
          {
            goto LABEL_25;
          }

LABEL_19:
          v24 = [[UIImage alloc] initWithData:v15];
          v25 = v24;
          if (v24)
          {
            [v24 size];
            v27 = v26;
            v28 = [v6 screen];
            [v28 scale];
            v30 = v27 / v29;

            [v6 bounds];
            v35 = v34;
            if (v30 == v34)
            {
              v36 = v31;
              v37 = v32;
              v38 = v33;
              v39 = [[UIImageView alloc] initWithImage:v25];
              [v39 setAutoresizingMask:[(BKRestorationScrimView *)v10 autoresizingMask]];
              [v39 setFrame:v36, v37, v35, v38];
              [(BKRestorationScrimView *)v10 addSubview:v39];
              v13 = 0;
LABEL_32:

LABEL_33:
              goto LABEL_34;
            }

            v39 = BCSceneLog();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              v59 = v30;
              v60 = 2048;
              v61 = v35;
              v40 = "Snapshot image size mismatch. Found width: %f but wanted %f";
              v41 = v39;
              v42 = 22;
              goto LABEL_30;
            }
          }

          else
          {
            v39 = BCSceneLog();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v40 = "Could not load snapshot image";
              v41 = v39;
              v42 = 2;
LABEL_30:
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, v40, buf, v42);
            }
          }

          v13 = v10;
          goto LABEL_32;
        }

        v21 = 2;
      }

      else
      {
        v21 = 1;
      }

      [v11 setOverrideUserInterfaceStyle:v21];
      goto LABEL_19;
    }

    switch(v16)
    {
      case 3:
        v22 = [v6 traitCollection];
        v23 = [v22 userInterfaceStyle];

        if (v23 == 2)
        {
          goto LABEL_19;
        }

        break;
      case 4:
        v43 = +[BCLightLevelController sharedInstance];
        v44 = [v43 isLowLight];

        if ((v44 & 1) == 0)
        {
          goto LABEL_19;
        }

        break;
      case 5:
        v19 = +[BCLightLevelController sharedInstance];
        v20 = [v19 isLowLight];

        if ((v20 & 1) == 0)
        {
          break;
        }

        goto LABEL_19;
      default:
        break;
    }

LABEL_25:
    v25 = BCSceneLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Cannot use image, appearance mismatch.", buf, 2u);
    }

    v13 = v10;
    goto LABEL_33;
  }

LABEL_35:
  [(BKRestorationScrimView *)v10 addSubview:v11];
  [(BKRestorationScrimView *)v10 _setupMaskView:v13 spinner:v11];
  v45 = [v11 centerXAnchor];
  v46 = [(BKRestorationScrimView *)v10 centerXAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];
  v57[0] = v47;
  v48 = [v11 centerYAnchor];
  v49 = [(BKRestorationScrimView *)v10 centerYAnchor];
  [v48 constraintEqualToAnchor:v49];
  v55 = v10;
  v51 = v50 = v6;
  v57[1] = v51;
  v52 = [NSArray arrayWithObjects:v57 count:2];
  [NSLayoutConstraint activateConstraints:v52];

  [v11 startAnimating];
  return v55;
}

- (void)show
{
  WeakRetained = objc_loadWeakRetained(&self->_window);
  [WeakRetained addSubview:self];
}

- (void)removeEventually
{
  objc_initWeak(&location, self);
  v2 = dispatch_time(0, 3000000000);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10005C358;
  v3[3] = &unk_100A035D0;
  objc_copyWeak(&v4, &location);
  dispatch_after(v2, &_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)removeAnimated
{
  if (!self->_removed)
  {
    self->_removed = 1;
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 _removeObserver:self->_observationToken];

    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10005C4A8;
    v5[3] = &unk_100A033C8;
    v5[4] = self;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10005C4B4;
    v4[3] = &unk_100A038D0;
    v4[4] = self;
    [UIView animateWithDuration:v5 animations:v4 completion:0.2];
  }
}

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

- (void)_setupMaskView:(id)a3 spinner:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_10063CDD8(a3, v8);
}

@end