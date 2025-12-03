@interface CBRecordingIndicatorViewController
- (CBRecordingIndicatorViewControllerDelegate)delegate;
- (id)initForLocation:(unint64_t)location;
- (void)setIndicatorColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
- (void)updateIndicatorType:(unint64_t)type;
- (void)updateIndicatorVisibility:(BOOL)visibility;
- (void)updateIndicatorVisibilityWithFastFadeAnimation:(BOOL)animation;
@end

@implementation CBRecordingIndicatorViewController

- (id)initForLocation:(unint64_t)location
{
  v12.receiver = self;
  v12.super_class = CBRecordingIndicatorViewController;
  v4 = [(CBRecordingIndicatorViewController *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_location = location;
    v4->_activeInterfaceOrientation = 1;
    v4->_indicatorState = 0;
    view = [(CBRecordingIndicatorViewController *)v4 view];
    v8 = objc_alloc_init(CBRecordingIndicatorView);
    [(CBRecordingIndicatorView *)v8 setAutoresizingMask:0];
    objc_storeStrong((v5 + 144), v8);
    if ([v5 location] == 2 || *(v5 + 120) == 1 && !objc_msgSend(v5, "location"))
    {
      v9 = objc_alloc_init(UIView);
      v10 = *(v5 + 136);
      *(v5 + 136) = v9;
      v11 = v9;

      [view addSubview:v11];
      [v11 addSubview:v8];

      if (location)
      {
LABEL_6:
        sub_100045308(v5);

        return v5;
      }
    }

    else
    {
      [view addSubview:v8];
      if (location)
      {
        goto LABEL_6;
      }
    }

    sub_100045070(v5);
    *(v5 + 120) = +[CBRecordingIndicatorManager _supportsSecureIndicator];
    goto LABEL_6;
  }

  return v5;
}

- (void)setIndicatorColor:(id)color
{
  objc_storeStrong(&self->_indicatorColor, color);
  colorCopy = color;
  indicatorView = [(CBRecordingIndicatorViewController *)self indicatorView];
  [indicatorView setBackgroundColor:self->_indicatorColor];

  [(CASecureIndicatorLayer *)self->_contentLayer setBackgroundColor:[(UIColor *)self->_indicatorColor cgColor]];
}

- (void)updateIndicatorType:(unint64_t)type
{
  if (type)
  {
    +[UIColor systemOrangeColor];
  }

  else
  {
    +[UIColor systemGreenColor];
  }
  v5 = ;
  [(CBRecordingIndicatorViewController *)self setIndicatorColor:v5];
  indicatorView = [(CBRecordingIndicatorViewController *)self indicatorView];
  [indicatorView setIndicatorType:type];

  v7 = sub_100018610(type);
  v8 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] updating secure indicator type for layer-dot to %@", &v11, 0xCu);
  }

  [(CASecureIndicatorLayer *)self->_contentLayer setPrivacyIndicatorType:v7];
  v9 = sub_100018654(type);
  v10 = 0.0;
  if (v9)
  {
    v10 = self->_size * 0.5;
  }

  [(CASecureIndicatorLayer *)self->_contentLayer setCornerRadius:v10];
}

- (void)updateIndicatorVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  if (self)
  {
    if ([(CBRecordingIndicatorViewController *)self location]== 2 || self->_isSecure && ![(CBRecordingIndicatorViewController *)self location])
    {

      sub_1000079D8(self, visibilityCopy);
    }

    else
    {

      [(CBRecordingIndicatorViewController *)self updateIndicatorVisibilityWithFastFadeAnimation:visibilityCopy];
    }
  }

  else
  {
    sub_100046914(visibility, &from);

    sub_100045F0C(0);
    from = 0;
    v5 = [UIViewPropertyAnimator alloc];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100045FB4;
    v6[3] = &unk_10007D668;
    objc_copyWeak(&v7, &from);
    [v5 initWithDuration:0 curve:v6 animations:0.7];
    __break(1u);
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(CBRecordingIndicatorViewController *)self traitCollection];
  _backlightLuminance = [traitCollection _backlightLuminance];
  if (_backlightLuminance != [changeCopy _backlightLuminance])
  {
    sub_10004684C(self, _backlightLuminance, [changeCopy _backlightLuminance]);
  }
}

- (CBRecordingIndicatorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateIndicatorVisibilityWithFastFadeAnimation:(BOOL)animation
{
  animationCopy = animation;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (animationCopy)
    {
      v6 = @"on";
    }

    else
    {
      v6 = @"off";
    }

    location = [(CBRecordingIndicatorViewController *)self location];
    v8 = @"Standalone";
    if (location == 1)
    {
      v8 = @"StatusBar";
    }

    if (location == 2)
    {
      v8 = @"SystemAperture";
    }

    v9 = v8;
    *buf = 138543618;
    v28 = v6;
    v29 = 2114;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Turning %{public}@ at %{public}@ location (fast fade animation)", buf, 0x16u);
  }

  sub_100045F0C(&self->super.super.super.isa);
  if (animationCopy)
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000463F8;
    v26[3] = &unk_10007D540;
    v26[4] = self;
    v10 = [[UIViewPropertyAnimator alloc] initWithDuration:0 curve:v26 animations:0.2];
    animatorFastFade = self->_animatorFastFade;
    self->_animatorFastFade = v10;

    objc_initWeak(buf, self);
    v12 = self->_animatorFastFade;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100007E94;
    v24[3] = &unk_10007D758;
    objc_copyWeak(&v25, buf);
    v24[4] = self;
    [(UIViewPropertyAnimator *)v12 addCompletion:v24];
    sub_10004592C(self, 1);
    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  else
  {
    if (sub_1000458A8(self))
    {
      size = 0.0;
      v14 = sub_100008294();
      sub_100045A94(v14, v15, v16);
      v17 = 0.0;
      if (self)
      {
        v17 = 0.8;
        if (self->_isSecure)
        {
          size = self->_size;
        }

        else
        {
          size = self->_size * 0.8;
        }

        if (self->_isSecure)
        {
          v17 = 1.0;
        }
      }

      sub_100045B64(self, size, v17);
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10004643C;
    v23[3] = &unk_10007D540;
    v23[4] = self;
    v18 = [[UIViewPropertyAnimator alloc] initWithDuration:0 curve:v23 animations:0.2];
    v19 = self->_animatorFastFade;
    self->_animatorFastFade = v18;

    objc_initWeak(buf, self);
    v20 = self->_animatorFastFade;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100046444;
    v21[3] = &unk_10007D730;
    objc_copyWeak(&v22, buf);
    [(UIViewPropertyAnimator *)v20 addCompletion:v21];
    sub_10004592C(self, 3);
    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  [(UIViewPropertyAnimator *)self->_animatorFastFade startAnimation];
}

@end