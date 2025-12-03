@interface PHViewController
- (PHContentUnavailable)contentUnavailableView;
- (PHViewController)init;
- (PHViewController)initWithCoder:(id)coder;
- (PHViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)makeUIForDefaultPNG;
- (void)setContentUnavailable:(BOOL)unavailable animated:(BOOL)animated;
- (void)setContentUnavailableViewTitle:(id)title;
- (void)setWhitePointAdaptivityStyle:(int64_t)style;
@end

@implementation PHViewController

- (PHViewController)init
{
  v5.receiver = self;
  v5.super_class = PHViewController;
  v2 = [(PHViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PHViewController *)v2 commonInit];
  }

  return v3;
}

- (PHViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = PHViewController;
  v4 = [(PHViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(PHViewController *)v4 commonInit];
  }

  return v5;
}

- (PHViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PHViewController;
  v3 = [(PHViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(PHViewController *)v3 commonInit];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHViewController;
  [(PHViewController *)&v4 dealloc];
}

- (void)didReceiveMemoryWarning
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ received memory warning, purging variables that can be dynamically restored.", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = PHViewController;
  [(PHViewController *)&v5 didReceiveMemoryWarning];
}

- (void)setContentUnavailable:(BOOL)unavailable animated:(BOOL)animated
{
  if (self->_contentUnavailable != unavailable)
  {
    v19 = v7;
    v20 = v6;
    v21 = v4;
    v22 = v5;
    animatedCopy = animated;
    self->_contentUnavailable = unavailable;
    if (unavailable || ([(PHContentUnavailable *)self->_contentUnavailableView superview], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10000406C;
      v17[3] = &unk_100089760;
      unavailableCopy = unavailable;
      v17[4] = self;
      v12 = objc_retainBlock(v17);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000040CC;
      v15[3] = &unk_100089788;
      v15[4] = self;
      unavailableCopy2 = unavailable;
      v13 = objc_retainBlock(v15);
      v14 = v13;
      if (animatedCopy)
      {
        [UIView animateWithDuration:4 delay:v13 options:v12 animations:0.300000012 completion:0.0];
      }

      else
      {
        (v13[2])(v13);
        (v12[2])(v12, 1);
      }
    }
  }
}

- (PHContentUnavailable)contentUnavailableView
{
  contentUnavailableView = self->_contentUnavailableView;
  if (!contentUnavailableView)
  {
    v4 = [_UIContentUnavailableView alloc];
    view = [(PHViewController *)self view];
    [view bounds];
    v6 = [v4 initWithFrame:self->_contentUnavailableViewTitle title:?];
    v7 = self->_contentUnavailableView;
    self->_contentUnavailableView = v6;

    [(PHContentUnavailable *)self->_contentUnavailableView setAlpha:0.0];
    [(PHContentUnavailable *)self->_contentUnavailableView setAutoresizingMask:18];
    view2 = [(PHViewController *)self view];
    backgroundColor = [view2 backgroundColor];
    [(PHContentUnavailable *)self->_contentUnavailableView setBackgroundColor:backgroundColor];

    [(PHContentUnavailable *)self->_contentUnavailableView setHidden:1];
    contentUnavailableView = self->_contentUnavailableView;
  }

  return contentUnavailableView;
}

- (void)setContentUnavailableViewTitle:(id)title
{
  titleCopy = title;
  if (self->_contentUnavailableViewTitle != titleCopy)
  {
    v6 = titleCopy;
    objc_storeStrong(&self->_contentUnavailableViewTitle, title);
    [(PHContentUnavailable *)self->_contentUnavailableView setTitle:self->_contentUnavailableViewTitle];
    titleCopy = v6;
  }
}

- (void)makeUIForDefaultPNG
{
  if (+[UIApplication shouldMakeUIForDefaultPNG])
  {
    navigationItem = [(PHViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:0];
    [navigationItem setRightBarButtonItem:0];
    [(PHViewController *)self setTabBarItem:0];
    [(PHViewController *)self setTitle:0];
  }
}

- (void)setWhitePointAdaptivityStyle:(int64_t)style
{
  if (self->_whitePointAdaptivityStyle != style)
  {
    self->_whitePointAdaptivityStyle = style;
    [(PHViewController *)self setNeedsWhitePointAdaptivityStyleUpdate];
  }
}

@end