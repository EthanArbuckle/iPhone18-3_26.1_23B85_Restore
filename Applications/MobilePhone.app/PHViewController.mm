@interface PHViewController
- (PHContentUnavailable)contentUnavailableView;
- (PHViewController)init;
- (PHViewController)initWithCoder:(id)a3;
- (PHViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)makeUIForDefaultPNG;
- (void)setContentUnavailable:(BOOL)a3 animated:(BOOL)a4;
- (void)setContentUnavailableViewTitle:(id)a3;
- (void)setWhitePointAdaptivityStyle:(int64_t)a3;
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

- (PHViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = PHViewController;
  v4 = [(PHViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(PHViewController *)v4 commonInit];
  }

  return v5;
}

- (PHViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PHViewController;
  v3 = [(PHViewController *)&v6 initWithCoder:a3];
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

- (void)setContentUnavailable:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_contentUnavailable != a3)
  {
    v19 = v7;
    v20 = v6;
    v21 = v4;
    v22 = v5;
    v8 = a4;
    self->_contentUnavailable = a3;
    if (a3 || ([(PHContentUnavailable *)self->_contentUnavailableView superview], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = __51__PHViewController_setContentUnavailable_animated___block_invoke;
      v17[3] = &unk_100285418;
      v18 = a3;
      v17[4] = self;
      v12 = objc_retainBlock(v17);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = __51__PHViewController_setContentUnavailable_animated___block_invoke_2;
      v15[3] = &unk_100285120;
      v15[4] = self;
      v16 = a3;
      v13 = objc_retainBlock(v15);
      v14 = v13;
      if (v8)
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

void __51__PHViewController_setContentUnavailable_animated___block_invoke(uint64_t a1, int a2)
{
  if (a2 && (*(a1 + 40) & 1) == 0)
  {
    v3 = [*(a1 + 32) contentUnavailableView];
    [v3 setHidden:1];
    [v3 removeFromSuperview];
  }
}

void __51__PHViewController_setContentUnavailable_animated___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) contentUnavailableView];
  if (*(a1 + 40) == 1)
  {
    v2 = [*(a1 + 32) view];
    [v2 addSubview:v4];

    v3 = [*(a1 + 32) view];
    [v3 bringSubviewToFront:v4];

    [v4 setAlpha:1.0];
    [v4 setHidden:0];
  }

  else
  {
    [v4 setAlpha:0.0];
  }
}

- (PHContentUnavailable)contentUnavailableView
{
  contentUnavailableView = self->_contentUnavailableView;
  if (!contentUnavailableView)
  {
    v4 = [_UIContentUnavailableView alloc];
    v5 = [(PHViewController *)self view];
    [v5 bounds];
    v6 = [v4 initWithFrame:self->_contentUnavailableViewTitle title:?];
    v7 = self->_contentUnavailableView;
    self->_contentUnavailableView = v6;

    [(PHContentUnavailable *)self->_contentUnavailableView setAlpha:0.0];
    [(PHContentUnavailable *)self->_contentUnavailableView setAutoresizingMask:18];
    v8 = [(PHViewController *)self view];
    v9 = [v8 backgroundColor];
    [(PHContentUnavailable *)self->_contentUnavailableView setBackgroundColor:v9];

    [(PHContentUnavailable *)self->_contentUnavailableView setHidden:1];
    contentUnavailableView = self->_contentUnavailableView;
  }

  return contentUnavailableView;
}

- (void)setContentUnavailableViewTitle:(id)a3
{
  v5 = a3;
  if (self->_contentUnavailableViewTitle != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_contentUnavailableViewTitle, a3);
    [(PHContentUnavailable *)self->_contentUnavailableView setTitle:self->_contentUnavailableViewTitle];
    v5 = v6;
  }
}

- (void)makeUIForDefaultPNG
{
  if (+[UIApplication shouldMakeUIForDefaultPNG])
  {
    v3 = [(PHViewController *)self navigationItem];
    [v3 setLeftBarButtonItem:0];
    [v3 setRightBarButtonItem:0];
    [(PHViewController *)self setTabBarItem:0];
    [(PHViewController *)self setTitle:0];
  }
}

- (void)setWhitePointAdaptivityStyle:(int64_t)a3
{
  if (self->_whitePointAdaptivityStyle != a3)
  {
    self->_whitePointAdaptivityStyle = a3;
    [(PHViewController *)self setNeedsWhitePointAdaptivityStyleUpdate];
  }
}

@end