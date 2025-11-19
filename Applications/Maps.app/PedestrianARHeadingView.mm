@interface PedestrianARHeadingView
- (BOOL)isVisible;
- (PedestrianARHeadingView)initWithDataSource:(id)a3;
- (PedestrianARHeadingViewDataSource)dataSource;
- (UIImageView)imageView;
- (UILabel)textLabel;
- (void)redraw;
- (void)transitionFromText:(id)a3 toText:(id)a4;
- (void)updateFadeTransitionToHide;
- (void)updateFadeTransitionToShow;
@end

@implementation PedestrianARHeadingView

- (PedestrianARHeadingViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)updateFadeTransitionToShow
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100F77CE4;
  v2[3] = &unk_101661B18;
  v2[4] = self;
  [UIView animateWithDuration:4 delay:v2 options:0 animations:0.4 completion:0.0];
}

- (void)updateFadeTransitionToHide
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100F77D7C;
  v2[3] = &unk_101661B18;
  v2[4] = self;
  [UIView animateWithDuration:4 delay:v2 options:0 animations:0.4 completion:0.0];
}

- (void)transitionFromText:(id)a3 toText:(id)a4
{
  v5 = a4;
  v6 = [(PedestrianARHeadingView *)self dataSource];
  v7 = [v6 imageForDisplayInHeadingView:self];
  v8 = [(PedestrianARHeadingView *)self imageView];
  [v8 setImage:v7];

  [(PedestrianARHeadingView *)self layoutIfNeeded];
  v9 = +[CATransition animation];
  v10 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v9 setTimingFunction:v10];

  [v9 setType:kCATransitionFade];
  [v9 setDuration:0.4];
  v11 = [(PedestrianARHeadingView *)self textLabel];
  v12 = [v11 layer];
  [v12 addAnimation:v9 forKey:@"PedestrianARTextTransitionAnimationKey"];

  v13 = [(PedestrianARHeadingView *)self textLabel];
  [v13 setText:v5];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100F77F48;
  v14[3] = &unk_101661B18;
  v14[4] = self;
  [UIView animateWithDuration:4 delay:v14 options:0 animations:0.4 completion:0.0];
}

- (void)redraw
{
  v3 = [(PedestrianARHeadingView *)self textLabel];
  v6 = [v3 text];

  v4 = [(PedestrianARHeadingView *)self dataSource];
  v5 = [v4 textForDisplayInHeadingView:self];

  if ([v6 length] && !objc_msgSend(v5, "length"))
  {
    [(PedestrianARHeadingView *)self updateFadeTransitionToHide];
LABEL_11:
    [(PedestrianARHeadingView *)self transitionFromText:v6 toText:v5];
    goto LABEL_12;
  }

  if ([v5 length] && !objc_msgSend(v6, "length"))
  {
    [(PedestrianARHeadingView *)self updateFadeTransitionToShow];
    goto LABEL_11;
  }

  if ([v6 length] && objc_msgSend(v5, "length") && (objc_msgSend(v6, "isEqual:", v5) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
}

- (UIImageView)imageView
{
  imageView = self->_imageView;
  if (!imageView)
  {
    v4 = objc_opt_new();
    v5 = self->_imageView;
    self->_imageView = v4;

    [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)self->_imageView setContentMode:4];
    [(UIImageView *)self->_imageView setAlpha:0.0];
    imageView = self->_imageView;
  }

  return imageView;
}

- (UILabel)textLabel
{
  textLabel = self->_textLabel;
  if (!textLabel)
  {
    v4 = objc_opt_new();
    v5 = self->_textLabel;
    self->_textLabel = v4;

    [(UILabel *)self->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = +[UIColor whiteColor];
    [(UILabel *)self->_textLabel setTextColor:v6];

    [(UILabel *)self->_textLabel setNumberOfLines:0];
    v7 = [UIFont systemFontOfSize:18.0];
    [(UILabel *)self->_textLabel setFont:v7];

    [(UILabel *)self->_textLabel setTextAlignment:1];
    textLabel = self->_textLabel;
  }

  return textLabel;
}

- (BOOL)isVisible
{
  if (([(PedestrianARHeadingView *)self isHidden]& 1) != 0)
  {
    return 0;
  }

  v4 = [(PedestrianARHeadingView *)self textLabel];
  v5 = [v4 text];
  v3 = v5 != 0;

  return v3;
}

- (PedestrianARHeadingView)initWithDataSource:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v28 = sub_10006D178();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v41 = "[PedestrianARHeadingView initWithDataSource:]";
      v42 = 2080;
      v43 = "PedestrianARHeadingView.m";
      v44 = 1024;
      v45 = 31;
      v46 = 2080;
      v47 = "dataSource != nil";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v29 = sub_10006D178();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v41 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v37.receiver = self;
  v37.super_class = PedestrianARHeadingView;
  v5 = [(PedestrianARHeadingView *)&v37 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, v4);
    [(PedestrianARHeadingView *)v6 setAlpha:0.0];
    v7 = [(PedestrianARHeadingView *)v6 textLabel];
    [(PedestrianARHeadingView *)v6 addSubview:v7];

    v8 = [(PedestrianARHeadingView *)v6 imageView];
    [(PedestrianARHeadingView *)v6 addSubview:v8];

    v33 = objc_opt_new();
    v34 = [(PedestrianARHeadingView *)v6 imageView];
    v31 = [v34 centerYAnchor];
    v32 = [(PedestrianARHeadingView *)v6 textLabel];
    v9 = [v32 centerYAnchor];
    v10 = [v31 constraintEqualToAnchor:v9];
    v39[0] = v10;
    v11 = [(PedestrianARHeadingView *)v6 imageView];
    v12 = [v11 rightAnchor];
    [(PedestrianARHeadingView *)v6 textLabel];
    v13 = v36 = v4;
    v14 = [v13 leftAnchor];
    v15 = [v12 constraintEqualToAnchor:v14 constant:-10.0];
    v39[1] = v15;
    v16 = [NSArray arrayWithObjects:v39 count:2];
    [v33 addObjectsFromArray:v16];

    v35 = [(PedestrianARHeadingView *)v6 textLabel];
    v17 = [v35 centerXAnchor];
    v18 = [(PedestrianARHeadingView *)v6 centerXAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v38[0] = v19;
    v20 = [(PedestrianARHeadingView *)v6 textLabel];
    v21 = [v20 centerYAnchor];
    v22 = [(PedestrianARHeadingView *)v6 centerYAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    v38[1] = v23;
    v24 = [NSArray arrayWithObjects:v38 count:2];
    [v33 addObjectsFromArray:v24];

    [NSLayoutConstraint activateConstraints:v33];
    v25 = +[UIColor blackColor];
    v26 = [v25 colorWithAlphaComponent:0.800000012];
    [(PedestrianARHeadingView *)v6 setBackgroundColor:v26];

    v4 = v36;
  }

  return v6;
}

@end