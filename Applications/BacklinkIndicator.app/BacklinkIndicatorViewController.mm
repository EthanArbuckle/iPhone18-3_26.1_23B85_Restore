@interface BacklinkIndicatorViewController
- (BacklinkIndicatorViewController)init;
- (BacklinkIndicatorViewControllerDelegate)delegate;
- (void)_updateUI;
- (void)actionButtonTapped;
- (void)setUserActivity:(id)activity;
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
    shared = [v3 shared];
    previewProvider = v2->_previewProvider;
    v2->_previewProvider = shared;
  }

  return v2;
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = BacklinkIndicatorViewController;
  [(BacklinkIndicatorViewController *)&v30 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  view = [(BacklinkIndicatorViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = objc_alloc_init(UIImageView);
  [(BacklinkIndicatorViewController *)self setImageView:v5];

  imageView = [(BacklinkIndicatorViewController *)self imageView];
  [imageView setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(BacklinkIndicatorViewController *)self view];
  imageView2 = [(BacklinkIndicatorViewController *)self imageView];
  [view2 addSubview:imageView2];

  imageView3 = [(BacklinkIndicatorViewController *)self imageView];
  topAnchor = [imageView3 topAnchor];
  view3 = [(BacklinkIndicatorViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v31[0] = v25;
  imageView4 = [(BacklinkIndicatorViewController *)self imageView];
  leadingAnchor = [imageView4 leadingAnchor];
  view4 = [(BacklinkIndicatorViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v31[1] = v20;
  imageView5 = [(BacklinkIndicatorViewController *)self imageView];
  trailingAnchor = [imageView5 trailingAnchor];
  view5 = [(BacklinkIndicatorViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v31[2] = v11;
  imageView6 = [(BacklinkIndicatorViewController *)self imageView];
  bottomAnchor = [imageView6 bottomAnchor];
  view6 = [(BacklinkIndicatorViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v31[3] = v16;
  v17 = [NSArray arrayWithObjects:v31 count:4];
  [NSLayoutConstraint activateConstraints:v17];

  [(BacklinkIndicatorViewController *)self _updateUI];
}

- (void)setUserActivity:(id)activity
{
  activityCopy = activity;
  if (self->_userActivity != activityCopy)
  {
    v6 = activityCopy;
    objc_storeStrong(&self->_userActivity, activity);
    [(BacklinkIndicatorViewController *)self _updateUI];
    activityCopy = v6;
  }
}

- (void)_updateUI
{
  viewIfLoaded = [(BacklinkIndicatorViewController *)self viewIfLoaded];

  if (viewIfLoaded)
  {
    userActivity = [(BacklinkIndicatorViewController *)self userActivity];

    if (userActivity)
    {
      previewProvider = [(BacklinkIndicatorViewController *)self previewProvider];
      userActivity2 = [(BacklinkIndicatorViewController *)self userActivity];
      v18 = 0;
      v7 = [previewProvider previewForUserActivity:userActivity2 error:&v18];
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
          userActivity3 = [(BacklinkIndicatorViewController *)self userActivity];
          _syLoggableDescription = [userActivity3 _syLoggableDescription];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = _syLoggableDescription;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "found no preview for user activity: %@", &buf, 0xCu);
        }
      }
    }

    else
    {
      v13 = 0;
    }

    imageView = [(BacklinkIndicatorViewController *)self imageView];
    [imageView setImage:v13];
  }
}

- (void)actionButtonTapped
{
  delegate = [(BacklinkIndicatorViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(BacklinkIndicatorViewController *)self delegate];
    [delegate2 backlinkIndicatorViewControllerDidReceiveTap:self];
  }
}

- (void)willAnimatePictureInPictureStop
{
  delegate = [(BacklinkIndicatorViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(BacklinkIndicatorViewController *)self delegate];
    [delegate2 backlinkIndicatorViewControllerWillDismiss:self];
  }
}

- (BacklinkIndicatorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end