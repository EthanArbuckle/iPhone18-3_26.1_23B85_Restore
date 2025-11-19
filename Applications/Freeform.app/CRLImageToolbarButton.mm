@interface CRLImageToolbarButton
+ (id)imageSymbolConfigurationWithScale:(int64_t)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CRLImageToolbarButton)initWithFrame:(CGRect)a3;
- (void)didChangeConfiguration;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)setContentEdgeInsets:(UIEdgeInsets)a3;
- (void)setImage:(id)a3;
- (void)setImageNamed:(id)a3;
- (void)setLandscapePhone:(BOOL)a3;
- (void)setOn:(BOOL)a3;
- (void)setShouldRemoveTrailingPadding:(BOOL)a3;
- (void)setTintAdjustmentMode:(int64_t)a3;
- (void)tintColorDidChange;
- (void)updateBackgroundViewColor;
- (void)updateForCurrentTraitCollection;
- (void)updateForTraitCollection:(id)a3;
@end

@implementation CRLImageToolbarButton

- (CRLImageToolbarButton)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = CRLImageToolbarButton;
  v3 = [(CRLImageToolbarButton *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CRLImageToolbarButton *)v3 setExclusiveTouch:1];
    [(CRLImageToolbarButton *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [(CRLImageToolbarButton *)v4 imageView];
    [v5 setContentMode:1];

    [(CRLImageToolbarButton *)v4 setPointerStyleProvider:&stru_10183C220];
    v10[0] = objc_opt_class();
    v10[1] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v10 count:2];
    v7 = [(CRLImageToolbarButton *)v4 registerForTraitChanges:v6 withAction:"updateForCurrentTraitCollection"];
  }

  return v4;
}

- (void)setTintAdjustmentMode:(int64_t)a3
{
  if (a3 == 1)
  {
    a3 = 0;
  }

  v3.receiver = self;
  v3.super_class = CRLImageToolbarButton;
  [(CRLImageToolbarButton *)&v3 setTintAdjustmentMode:a3];
}

- (void)setImage:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101312D2C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101312D40();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101312DC8();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLImageToolbarButton setImage:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLImageToolbarButton.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:64 isFatal:0 description:"nil image is set"];
  }

  if (([v4 isSymbolImage] & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101312DF0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101312E18();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101312EA0();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLImageToolbarButton setImage:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLImageToolbarButton.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:65 isFatal:0 description:"Only vector images are supported"];
  }

  if ([v4 isSymbolImage])
  {
    v11 = [CRLImageToolbarButton imageSymbolConfigurationWithScale:3];
    v12 = [v4 imageWithConfiguration:v11];

    image = self->_image;
    if (image != v12 && ([(UIImage *)image isEqual:v12]& 1) == 0)
    {
      objc_storeStrong(&self->_image, v12);
      v14 = [CRLImageToolbarButton imageSymbolConfigurationWithScale:2];
      v15 = [v4 imageWithConfiguration:v14];
      landscapeImagePhone = self->_landscapeImagePhone;
      self->_landscapeImagePhone = v15;

      [(CRLImageToolbarButton *)self didChangeConfiguration];
    }
  }
}

- (void)setImageNamed:(id)a3
{
  v4 = a3;
  v5 = [UIImage systemImageNamed:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [UIImage imageNamed:v4];
  }

  v8 = v7;

  if (([v8 isSymbolImage] & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101312EC8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101312EDC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101312F64();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLImageToolbarButton setImageNamed:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLImageToolbarButton.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:84 isFatal:0 description:"Only vector images are supported"];
  }

  [(CRLImageToolbarButton *)self setImage:v8];
}

+ (id)imageSymbolConfigurationWithScale:(int64_t)a3
{
  v3 = [UIImageSymbolConfiguration configurationWithScale:a3];
  v4 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
  v5 = [v3 configurationWithTraitCollection:v4];

  return v5;
}

- (void)setLandscapePhone:(BOOL)a3
{
  if (self->_landscapePhone != a3)
  {
    self->_landscapePhone = a3;
    [(CRLImageToolbarButton *)self didChangeConfiguration];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = CRLImageToolbarButton;
  [(CRLImageToolbarButton *)&v3 didMoveToWindow];
  [(CRLImageToolbarButton *)self updateForCurrentTraitCollection];
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = CRLImageToolbarButton;
  [(CRLImageToolbarButton *)&v3 didMoveToSuperview];
  [(CRLImageToolbarButton *)self updateForCurrentTraitCollection];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = CRLImageToolbarButton;
  [(CRLImageToolbarButton *)&v3 tintColorDidChange];
  if (self->_onBackgroundView)
  {
    [(CRLImageToolbarButton *)self updateBackgroundViewColor];
  }
}

- (void)updateForCurrentTraitCollection
{
  v3 = [(CRLImageToolbarButton *)self traitCollection];
  [(CRLImageToolbarButton *)self updateForTraitCollection:v3];
}

- (void)updateForTraitCollection:(id)a3
{
  v5 = a3;
  if ([v5 userInterfaceIdiom])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v5 verticalSizeClass] == 1;
  }

  [(CRLImageToolbarButton *)self setLandscapePhone:v4];
}

- (void)didChangeConfiguration
{
  if (self->_landscapePhone)
  {
    v3 = self->_landscapeImagePhone;
    v4 = 32.0;
    if (v3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 44.0;
  }

  image = self->_image;
  if (!image)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101312F8C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101312FA0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101313028();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLImageToolbarButton didChangeConfiguration]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLImageToolbarButton.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:141 isFatal:0 description:"Don't have an image to use"];

    image = self->_image;
  }

  v3 = image;
LABEL_16:
  [(UIImage *)v3 size];
  v10 = v9;
  v12 = v11;
  v13 = v9 + 11.0 + 11.0;
  v14 = (v4 - v11) * 0.5;
  if (!self->_on)
  {
    goto LABEL_29;
  }

  if (!self->_landscapePhone)
  {
    goto LABEL_52;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101313050();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101313078();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101313100();
  }

  v15 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v15);
  }

  v16 = [NSString stringWithUTF8String:"[CRLImageToolbarButton didChangeConfiguration]"];
  v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLImageToolbarButton.m"];

  if (self->_on)
  {
LABEL_52:
    if (self->_onBackgroundView)
    {
      goto LABEL_32;
    }

    +[UIPointerInteraction crl_toolbarRoundedRectWidth];
    v19 = v18;
    +[UIPointerInteraction crl_toolbarRoundedRectHeight];
    v21 = v20;
    +[UIPointerInteraction crl_toolbarRoundedRectCornerRadius];
    v23 = v22;
    v24 = objc_opt_new();
    onBackgroundView = self->_onBackgroundView;
    self->_onBackgroundView = v24;

    [(UIView *)self->_onBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_onBackgroundView setUserInteractionEnabled:0];
    v26 = [(UIView *)self->_onBackgroundView layer];
    [v26 setCornerRadius:v23];

    [(CRLImageToolbarButton *)self updateBackgroundViewColor];
    v27 = [(CRLImageToolbarButton *)self imageView];
    [(CRLImageToolbarButton *)self insertSubview:self->_onBackgroundView belowSubview:v27];
    v60 = [(UIView *)self->_onBackgroundView widthAnchor];
    v59 = [v60 constraintEqualToConstant:v19];
    v63[0] = v59;
    v58 = [(UIView *)self->_onBackgroundView heightAnchor];
    v57 = [v58 constraintEqualToConstant:v21];
    v63[1] = v57;
    v28 = [(UIView *)self->_onBackgroundView centerXAnchor];
    v29 = [(CRLImageToolbarButton *)self centerXAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:-0.5];
    v63[2] = v30;
    v31 = [(UIView *)self->_onBackgroundView centerYAnchor];
    v32 = [(CRLImageToolbarButton *)self centerYAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:-0.5];
    v63[3] = v33;
    v34 = [NSArray arrayWithObjects:v63 count:4];
    [NSLayoutConstraint activateConstraints:v34];
  }

  else
  {
LABEL_29:
    v35 = self->_onBackgroundView;
    if (!v35)
    {
      goto LABEL_32;
    }

    [(UIView *)v35 removeFromSuperview];
    v27 = self->_onBackgroundView;
    self->_onBackgroundView = 0;
  }

LABEL_32:
  +[UIScreen crl_screenScale];
  v37 = v36;
  v38 = sub_100122128(11.0, v36);
  v39 = sub_100122128(v14, v37);
  [(CRLImageToolbarButton *)self additionalLeftPaddingForImageFrame:v38, v39, v10, v12];
  v41 = v40;
  [(CRLImageToolbarButton *)self additionalRightPaddingForImageFrame:v38, v39, v10, v12];
  v43 = v13 + v41 + v42;
  v44 = v38 + v41;
  v64.origin.x = v44;
  v64.origin.y = v39;
  v64.size.width = v10;
  v64.size.height = v12;
  MaxY = CGRectGetMaxY(v64);
  v65.origin.x = v44;
  v65.origin.y = v39;
  v65.size.width = v10;
  v65.size.height = v12;
  MaxX = CGRectGetMaxX(v65);
  v47 = v43 - MaxX;
  if (self->_shouldRemoveTrailingPadding)
  {
    v48 = [(CRLImageToolbarButton *)self effectiveUserInterfaceLayoutDirection];
    MaxX = v47 + -11.0;
    if (v48)
    {
      v44 = v44 + -11.0;
    }

    else
    {
      v47 = v47 + -11.0;
    }
  }

  v49 = [(CRLImageToolbarButton *)self imageForState:0, MaxX];

  if (v3 != v49)
  {
    v62.receiver = self;
    v62.super_class = CRLImageToolbarButton;
    [(CRLImageToolbarButton *)&v62 setImage:v3 forState:0];
  }

  [(CRLImageToolbarButton *)self crl_deprecatedContentEdgeInsets];
  if (v44 != v53 || v39 != v50 || v47 != v52 || v4 - MaxY != v51)
  {
    v61.receiver = self;
    v61.super_class = CRLImageToolbarButton;
    [(CRLImageToolbarButton *)&v61 setContentEdgeInsets:v39, v44, v4 - MaxY, v47];
  }
}

- (void)updateBackgroundViewColor
{
  v6 = [(CRLImageToolbarButton *)self tintColor];
  v3 = [v6 colorWithAlphaComponent:0.3];
  v4 = [v3 CGColor];
  v5 = [(UIView *)self->_onBackgroundView layer];
  [v5 setBackgroundColor:v4];
}

- (void)setContentEdgeInsets:(UIEdgeInsets)a3
{
  v3 = [CRLAssertionHandler _atomicIncrementAssertCount:a3.top];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10183C380);
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v14 = v3;
    v15 = 2082;
    v16 = "[CRLImageToolbarButton setContentEdgeInsets:]";
    v17 = 2082;
    v18 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLImageToolbarButton.m";
    v19 = 1024;
    v20 = 234;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10183C3A0);
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v6 = v5;
    v7 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v14 = v3;
    v15 = 2114;
    v16 = v7;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v8 = [NSString stringWithUTF8String:"[CRLImageToolbarButton setContentEdgeInsets:]"];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLImageToolbarButton.m"];
  [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:234 isFatal:0 description:"Do not call method"];

  v10 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLImageToolbarButton setContentEdgeInsets:]"];
  v11 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)setOn:(BOOL)a3
{
  if (self->_on != a3)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000F82E4;
    v5[3] = &unk_10183C3C8;
    v5[4] = self;
    v6 = a3;
    [UIView performWithoutAnimation:v5];
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(CRLImageToolbarButton *)self bounds];
  v8 = v7 + -4.0;
  v10 = v9 + 0.0;
  v12 = v11 + 8.0;
  v13 = x;
  v14 = y;

  return CGRectContainsPoint(*&v8, *&v13);
}

- (void)setShouldRemoveTrailingPadding:(BOOL)a3
{
  if (self->_shouldRemoveTrailingPadding != a3)
  {
    self->_shouldRemoveTrailingPadding = a3;
    [(CRLImageToolbarButton *)self didChangeConfiguration];
  }
}

@end