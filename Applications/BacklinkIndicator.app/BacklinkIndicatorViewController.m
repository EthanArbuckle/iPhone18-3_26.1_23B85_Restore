@interface BacklinkIndicatorViewController
- (BacklinkIndicatorViewController)init;
- (BacklinkIndicatorViewControllerDelegate)delegate;
- (void)_updateUI;
- (void)actionButtonTapped;
- (void)setUserActivity:(id)a3;
- (void)viewDidLoad;
- (void)willAnimatePictureInPictureStop;
@end

@implementation BacklinkIndicatorViewController

- (BacklinkIndicatorViewController)init
{
  v8.receiver = self;
  v8.super_class = BacklinkIndicatorViewController;
  v2 = [(BacklinkIndicatorViewController *)&v8 initWithNibName:0 bundle:0];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = qword_10000DDF8;
    v13 = qword_10000DDF8;
    if (!qword_10000DDF8)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100002A98;
      v9[3] = &unk_100008328;
      v9[4] = &v10;
      sub_100002A98(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = [v3 shared];
    previewProvider = v2->_previewProvider;
    v2->_previewProvider = v5;
  }

  return v2;
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = BacklinkIndicatorViewController;
  [(BacklinkIndicatorViewController *)&v30 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  v4 = [(BacklinkIndicatorViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = objc_alloc_init(UIImageView);
  [(BacklinkIndicatorViewController *)self setImageView:v5];

  v6 = [(BacklinkIndicatorViewController *)self imageView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(BacklinkIndicatorViewController *)self view];
  v8 = [(BacklinkIndicatorViewController *)self imageView];
  [v7 addSubview:v8];

  v29 = [(BacklinkIndicatorViewController *)self imageView];
  v27 = [v29 topAnchor];
  v28 = [(BacklinkIndicatorViewController *)self view];
  v26 = [v28 topAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v31[0] = v25;
  v24 = [(BacklinkIndicatorViewController *)self imageView];
  v22 = [v24 leadingAnchor];
  v23 = [(BacklinkIndicatorViewController *)self view];
  v21 = [v23 leadingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v31[1] = v20;
  v19 = [(BacklinkIndicatorViewController *)self imageView];
  v18 = [v19 trailingAnchor];
  v9 = [(BacklinkIndicatorViewController *)self view];
  v10 = [v9 trailingAnchor];
  v11 = [v18 constraintEqualToAnchor:v10];
  v31[2] = v11;
  v12 = [(BacklinkIndicatorViewController *)self imageView];
  v13 = [v12 bottomAnchor];
  v14 = [(BacklinkIndicatorViewController *)self view];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v31[3] = v16;
  v17 = [NSArray arrayWithObjects:v31 count:4];
  [NSLayoutConstraint activateConstraints:v17];

  [(BacklinkIndicatorViewController *)self _updateUI];
}

- (void)setUserActivity:(id)a3
{
  v5 = a3;
  if (self->_userActivity != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_userActivity, a3);
    [(BacklinkIndicatorViewController *)self _updateUI];
    v5 = v6;
  }
}

- (void)_updateUI
{
  v3 = [(BacklinkIndicatorViewController *)self viewIfLoaded];

  if (v3)
  {
    v4 = [(BacklinkIndicatorViewController *)self userActivity];

    if (v4)
    {
      v5 = [(BacklinkIndicatorViewController *)self previewProvider];
      v6 = [(BacklinkIndicatorViewController *)self userActivity];
      v18 = 0;
      v7 = [v5 previewForUserActivity:v6 error:&v18];
      v8 = v18;

      if (v8)
      {
        v9 = sub_100000DF0();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100002EE4(self, v8, v9);
        }
      }

      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v10 = qword_10000DE08;
      v22 = qword_10000DE08;
      if (!qword_10000DE08)
      {
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v24 = sub_100002C5C;
        v25 = &unk_100008328;
        v26 = &v19;
        v11 = sub_100002AF0();
        v12 = dlsym(v11, "NPNotePreviewKeyPreview");
        *(v26[1] + 24) = v12;
        qword_10000DE08 = *(v26[1] + 24);
        v10 = v20[3];
      }

      _Block_object_dispose(&v19, 8);
      if (!v10)
      {
        sub_100002FA8();
      }

      v13 = [v7 objectForKey:*v10];
      if (!v13)
      {
        v14 = sub_100000DF0();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [(BacklinkIndicatorViewController *)self userActivity];
          v16 = [v15 _syLoggableDescription];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "found no preview for user activity: %@", &buf, 0xCu);
        }
      }
    }

    else
    {
      v13 = 0;
    }

    v17 = [(BacklinkIndicatorViewController *)self imageView];
    [v17 setImage:v13];
  }
}

- (void)actionButtonTapped
{
  v3 = [(BacklinkIndicatorViewController *)self delegate];

  if (v3)
  {
    v4 = [(BacklinkIndicatorViewController *)self delegate];
    [v4 backlinkIndicatorViewControllerDidReceiveTap:self];
  }
}

- (void)willAnimatePictureInPictureStop
{
  v3 = [(BacklinkIndicatorViewController *)self delegate];

  if (v3)
  {
    v4 = [(BacklinkIndicatorViewController *)self delegate];
    [v4 backlinkIndicatorViewControllerWillDismiss:self];
  }
}

- (BacklinkIndicatorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end