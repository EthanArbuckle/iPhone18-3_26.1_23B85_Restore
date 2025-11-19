@interface SCATVisualScrollerContainerView
- (BOOL)updateFocusState:(int64_t)a3;
- (SCATVisualScrollerContainerView)initWithAxis:(int64_t)a3;
- (SCATVisualScrollerContainerViewScrollingDelegate)delegate;
- (id)description;
- (void)layoutSubviews;
@end

@implementation SCATVisualScrollerContainerView

- (SCATVisualScrollerContainerView)initWithAxis:(int64_t)a3
{
  v82.receiver = self;
  v82.super_class = SCATVisualScrollerContainerView;
  v4 = [(SCATCustomFocusingView *)&v82 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (v4)
  {
    v4->_axis = a3;
    [(SCATVisualScrollerContainerView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v72 = [UIBlurEffect effectWithStyle:4007];
    v6 = [[UIVisualEffectView alloc] initWithEffect:v72];
    [v6 setAutoresizingMask:18];
    [v6 setClipsToBounds:1];
    [(SCATVisualScrollerContainerView *)v5 setBackgroundView:v6];
    [(SCATVisualScrollerContainerView *)v5 addSubview:v6];
    v7 = objc_alloc_init(UIView);
    [v7 setAutoresizingMask:18];
    [(SCATVisualScrollerContainerView *)v5 setScrollerContainerView:v7];
    [(SCATVisualScrollerContainerView *)v5 addSubview:v7];
    [v7 setClipsToBounds:1];
    v8 = +[CALayer layer];
    v9 = [(SCATVisualScrollerContainerView *)v5 layer];
    [v9 addSublayer:v8];

    [(SCATVisualScrollerContainerView *)v5 setBorderLayer:v8];
    objc_initWeak(&location, v5);
    if (a3)
    {
      v10 = [[SCATVisualScrollerView alloc] initWithTriangle:3];
      v75[0] = _NSConcreteStackBlock;
      v75[1] = 3221225472;
      v75[2] = sub_10007F7C4;
      v75[3] = &unk_1001D3460;
      v11 = &v76;
      objc_copyWeak(&v76, &location);
      [(SCATVisualScrollerView *)v10 setActivateActionHandler:v75];
      v12 = sub_100042B24(@"Scroll-Left");
      [(SCATVisualScrollerView *)v10 setAccessibilityLabel:v12];

      [(SCATVisualScrollerContainerView *)v5 setScrollLeftView:v10];
      [v7 addSubview:v10];
      v13 = [(SCATVisualScrollerView *)v10 leftAnchor];
      v14 = [(SCATVisualScrollerContainerView *)v5 leftAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];
      [v15 setActive:1];

      v16 = [(SCATVisualScrollerView *)v10 topAnchor];
      v17 = [(SCATVisualScrollerContainerView *)v5 topAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
      [v18 setActive:1];

      v19 = [(SCATVisualScrollerView *)v10 bottomAnchor];
      v20 = [(SCATVisualScrollerContainerView *)v5 bottomAnchor];
      v21 = [v19 constraintEqualToAnchor:v20];
      [v21 setActive:1];

      v22 = [(SCATVisualScrollerView *)v10 rightAnchor];
      v23 = [(SCATVisualScrollerContainerView *)v5 centerXAnchor];
      v24 = [v22 constraintEqualToAnchor:v23];
      [v24 setActive:1];

      v25 = [[SCATVisualScrollerView alloc] initWithTriangle:1];
      v73[0] = _NSConcreteStackBlock;
      v73[1] = 3221225472;
      v73[2] = sub_10007F83C;
      v73[3] = &unk_1001D3460;
      v26 = &v74;
      objc_copyWeak(&v74, &location);
      [(SCATVisualScrollerView *)v25 setActivateActionHandler:v73];
      v27 = sub_100042B24(@"Scroll-Right");
      [(SCATVisualScrollerView *)v25 setAccessibilityLabel:v27];

      [(SCATVisualScrollerContainerView *)v5 setScrollRightView:v25];
      [v7 addSubview:v25];
      v28 = [(SCATVisualScrollerView *)v25 rightAnchor];
      v29 = [(SCATVisualScrollerContainerView *)v5 rightAnchor];
      v30 = [v28 constraintEqualToAnchor:v29];
      [v30 setActive:1];

      v31 = [(SCATVisualScrollerView *)v25 topAnchor];
      v32 = [(SCATVisualScrollerContainerView *)v5 topAnchor];
      v33 = [v31 constraintEqualToAnchor:v32];
      [v33 setActive:1];

      v34 = [(SCATVisualScrollerView *)v25 bottomAnchor];
      v35 = [(SCATVisualScrollerContainerView *)v5 bottomAnchor];
      v36 = [v34 constraintEqualToAnchor:v35];
      [v36 setActive:1];

      v37 = [(SCATVisualScrollerView *)v25 leftAnchor];
      v38 = [(SCATVisualScrollerContainerView *)v5 centerXAnchor];
      v39 = [v37 constraintEqualToAnchor:v38];
      [v39 setActive:1];

      v40 = [(SCATVisualScrollerContainerView *)v5 heightAnchor];
      +[SCATVisualScrollerView scrollerSize];
      v42 = [v40 constraintEqualToConstant:v41 + 20.0];
      [v42 setActive:1];
    }

    else
    {
      v43 = [[SCATVisualScrollerView alloc] initWithTriangle:0];
      v79[0] = _NSConcreteStackBlock;
      v79[1] = 3221225472;
      v79[2] = sub_10007F6D4;
      v79[3] = &unk_1001D3460;
      v11 = &v80;
      objc_copyWeak(&v80, &location);
      [(SCATVisualScrollerView *)v43 setActivateActionHandler:v79];
      v44 = sub_100042B24(@"Scroll-Up");
      [(SCATVisualScrollerView *)v43 setAccessibilityLabel:v44];

      [(SCATVisualScrollerContainerView *)v5 setScrollUpView:v43];
      [v7 addSubview:v43];
      v45 = [(SCATVisualScrollerView *)v43 leftAnchor];
      v46 = [(SCATVisualScrollerContainerView *)v5 leftAnchor];
      v47 = [v45 constraintEqualToAnchor:v46];
      [v47 setActive:1];

      v48 = [(SCATVisualScrollerView *)v43 topAnchor];
      v49 = [(SCATVisualScrollerContainerView *)v5 topAnchor];
      v50 = [v48 constraintEqualToAnchor:v49];
      [v50 setActive:1];

      v51 = [(SCATVisualScrollerView *)v43 rightAnchor];
      v52 = [(SCATVisualScrollerContainerView *)v5 rightAnchor];
      v53 = [v51 constraintEqualToAnchor:v52];
      [v53 setActive:1];

      v54 = [(SCATVisualScrollerView *)v43 bottomAnchor];
      v55 = [(SCATVisualScrollerContainerView *)v5 centerYAnchor];
      v56 = [v54 constraintEqualToAnchor:v55];
      [v56 setActive:1];

      v25 = [[SCATVisualScrollerView alloc] initWithTriangle:2];
      v77[0] = _NSConcreteStackBlock;
      v77[1] = 3221225472;
      v77[2] = sub_10007F74C;
      v77[3] = &unk_1001D3460;
      v26 = &v78;
      objc_copyWeak(&v78, &location);
      [(SCATVisualScrollerView *)v25 setActivateActionHandler:v77];
      v57 = sub_100042B24(@"Scroll-Down");
      [(SCATVisualScrollerView *)v25 setAccessibilityLabel:v57];

      [(SCATVisualScrollerContainerView *)v5 setScrollDownView:v25];
      [v7 addSubview:v25];
      v58 = [(SCATVisualScrollerView *)v25 leftAnchor];
      v59 = [(SCATVisualScrollerContainerView *)v5 leftAnchor];
      v60 = [v58 constraintEqualToAnchor:v59];
      [v60 setActive:1];

      v61 = [(SCATVisualScrollerView *)v25 bottomAnchor];
      v62 = [(SCATVisualScrollerContainerView *)v5 bottomAnchor];
      v63 = [v61 constraintEqualToAnchor:v62];
      [v63 setActive:1];

      v64 = [(SCATVisualScrollerView *)v25 rightAnchor];
      v65 = [(SCATVisualScrollerContainerView *)v5 rightAnchor];
      v66 = [v64 constraintEqualToAnchor:v65];
      [v66 setActive:1];

      v67 = [(SCATVisualScrollerView *)v25 topAnchor];
      v68 = [(SCATVisualScrollerContainerView *)v5 centerYAnchor];
      v69 = [v67 constraintEqualToAnchor:v68];
      [v69 setActive:1];

      v40 = [(SCATVisualScrollerContainerView *)v5 widthAnchor];
      +[SCATVisualScrollerView scrollerSize];
      v42 = [v40 constraintEqualToConstant:v70 + 20.0];
      [v42 setActive:1];
    }

    objc_destroyWeak(v26);
    objc_destroyWeak(v11);

    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = SCATVisualScrollerContainerView;
  [(SCATVisualScrollerContainerView *)&v26 layoutSubviews];
  [(SCATVisualScrollerContainerView *)self bounds];
  width = v27.size.width;
  height = v27.size.height;
  v28 = CGRectInset(v27, -7.0, -7.0);
  x = v28.origin.x;
  y = v28.origin.y;
  v7 = v28.size.width;
  v8 = v28.size.height;
  v9 = [(SCATVisualScrollerContainerView *)self borderLayer];
  [v9 setFrame:{x, y, v7, v8}];

  if (width >= height)
  {
    v10 = height;
  }

  else
  {
    v10 = width;
  }

  v11 = v10 * 0.5;
  v12 = [(SCATVisualScrollerContainerView *)self layer];
  [v12 setCornerRadius:v11];

  v13 = [(SCATVisualScrollerContainerView *)self backgroundView];
  v14 = [v13 layer];
  [v14 setCornerRadius:v11];

  v15 = [(SCATVisualScrollerContainerView *)self scrollerContainerView];
  v16 = [v15 layer];
  [v16 setCornerRadius:v11];

  v17 = [(SCATVisualScrollerContainerView *)self borderLayer];
  [v17 bounds];
  v19 = v18;

  v20 = [(SCATVisualScrollerContainerView *)self borderLayer];
  [v20 bounds];
  v22 = v21;

  if (v19 >= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v19;
  }

  v24 = v23 * 0.5;
  v25 = [(SCATVisualScrollerContainerView *)self borderLayer];
  [v25 setCornerRadius:v24];
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = SCATVisualScrollerContainerView;
  v3 = [(SCATVisualScrollerContainerView *)&v8 description];
  v4 = v3;
  if (self->_axis)
  {
    v5 = @"Horizontal";
  }

  else
  {
    v5 = @"Vertical";
  }

  v6 = [NSString stringWithFormat:@"%@ - Axis:%@", v3, v5];

  return v6;
}

- (BOOL)updateFocusState:(int64_t)a3
{
  v50.receiver = self;
  v50.super_class = SCATVisualScrollerContainerView;
  [(SCATCustomFocusingView *)&v50 updateFocusState:?];
  [(SCATVisualScrollerContainerView *)self bounds];
  if (!a3)
  {
    v53 = CGRectInset(*&v5, -2.0, -2.0);
    x = v53.origin.x;
    y = v53.origin.y;
    width = v53.size.width;
    height = v53.size.height;
    v32 = [(SCATVisualScrollerContainerView *)self borderLayer];
    [v32 setFrame:{x, y, width, height}];

    [objc_opt_class() unfocusedStateBorderThickness];
    v34 = v33;
    v35 = [(SCATVisualScrollerContainerView *)self borderLayer];
    [v35 setBorderWidth:v34];

    v27 = [objc_opt_class() unfocusedStateColor];
    goto LABEL_7;
  }

  if (a3 == 2)
  {
    v52 = CGRectInset(*&v5, -2.0, -2.0);
    v19 = v52.origin.x;
    v20 = v52.origin.y;
    v21 = v52.size.width;
    v22 = v52.size.height;
    v23 = [(SCATVisualScrollerContainerView *)self borderLayer];
    [v23 setFrame:{v19, v20, v21, v22}];

    [objc_opt_class() unfocusedStateBorderThickness];
    v25 = v24;
    v26 = [(SCATVisualScrollerContainerView *)self borderLayer];
    [v26 setBorderWidth:v25];

    v27 = [objc_opt_class() focusedGroupStateColor];
LABEL_7:
    v17 = v27;
    v18 = 0.4;
    goto LABEL_8;
  }

  if (a3 != 1)
  {
    goto LABEL_9;
  }

  v51 = CGRectInset(*&v5, -7.0, -7.0);
  v9 = v51.origin.x;
  v10 = v51.origin.y;
  v11 = v51.size.width;
  v12 = v51.size.height;
  v13 = [(SCATVisualScrollerContainerView *)self borderLayer];
  [v13 setFrame:{v9, v10, v11, v12}];

  [objc_opt_class() focusedStateBorderThickness];
  v15 = v14;
  v16 = [(SCATVisualScrollerContainerView *)self borderLayer];
  [v16 setBorderWidth:v15];

  v17 = [objc_opt_class() focusedStateColor];
  v18 = 1.0;
LABEL_8:
  v36 = [v17 CGColor];
  v37 = [(SCATVisualScrollerContainerView *)self borderLayer];
  [v37 setBorderColor:v36];

  v38 = [(SCATVisualScrollerContainerView *)self borderLayer];
  *&v39 = v18;
  [v38 setOpacity:v39];

LABEL_9:
  v40 = [(SCATVisualScrollerContainerView *)self borderLayer];
  [v40 bounds];
  v42 = v41;

  v43 = [(SCATVisualScrollerContainerView *)self borderLayer];
  [v43 bounds];
  v45 = v44;

  if (v42 >= v45)
  {
    v46 = v45;
  }

  else
  {
    v46 = v42;
  }

  v47 = v46 * 0.5;
  v48 = [(SCATVisualScrollerContainerView *)self borderLayer];
  [v48 setCornerRadius:v47];

  return 1;
}

- (SCATVisualScrollerContainerViewScrollingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end