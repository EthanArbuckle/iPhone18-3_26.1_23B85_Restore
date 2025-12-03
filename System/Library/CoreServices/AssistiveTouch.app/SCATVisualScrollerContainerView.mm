@interface SCATVisualScrollerContainerView
- (BOOL)updateFocusState:(int64_t)state;
- (SCATVisualScrollerContainerView)initWithAxis:(int64_t)axis;
- (SCATVisualScrollerContainerViewScrollingDelegate)delegate;
- (id)description;
- (void)layoutSubviews;
@end

@implementation SCATVisualScrollerContainerView

- (SCATVisualScrollerContainerView)initWithAxis:(int64_t)axis
{
  v82.receiver = self;
  v82.super_class = SCATVisualScrollerContainerView;
  v4 = [(SCATCustomFocusingView *)&v82 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (v4)
  {
    v4->_axis = axis;
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
    layer = [(SCATVisualScrollerContainerView *)v5 layer];
    [layer addSublayer:v8];

    [(SCATVisualScrollerContainerView *)v5 setBorderLayer:v8];
    objc_initWeak(&location, v5);
    if (axis)
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
      leftAnchor = [(SCATVisualScrollerView *)v10 leftAnchor];
      leftAnchor2 = [(SCATVisualScrollerContainerView *)v5 leftAnchor];
      v15 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      [v15 setActive:1];

      topAnchor = [(SCATVisualScrollerView *)v10 topAnchor];
      topAnchor2 = [(SCATVisualScrollerContainerView *)v5 topAnchor];
      v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [v18 setActive:1];

      bottomAnchor = [(SCATVisualScrollerView *)v10 bottomAnchor];
      bottomAnchor2 = [(SCATVisualScrollerContainerView *)v5 bottomAnchor];
      v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [v21 setActive:1];

      rightAnchor = [(SCATVisualScrollerView *)v10 rightAnchor];
      centerXAnchor = [(SCATVisualScrollerContainerView *)v5 centerXAnchor];
      v24 = [rightAnchor constraintEqualToAnchor:centerXAnchor];
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
      rightAnchor2 = [(SCATVisualScrollerView *)v25 rightAnchor];
      rightAnchor3 = [(SCATVisualScrollerContainerView *)v5 rightAnchor];
      v30 = [rightAnchor2 constraintEqualToAnchor:rightAnchor3];
      [v30 setActive:1];

      topAnchor3 = [(SCATVisualScrollerView *)v25 topAnchor];
      topAnchor4 = [(SCATVisualScrollerContainerView *)v5 topAnchor];
      v33 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      [v33 setActive:1];

      bottomAnchor3 = [(SCATVisualScrollerView *)v25 bottomAnchor];
      bottomAnchor4 = [(SCATVisualScrollerContainerView *)v5 bottomAnchor];
      v36 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      [v36 setActive:1];

      leftAnchor3 = [(SCATVisualScrollerView *)v25 leftAnchor];
      centerXAnchor2 = [(SCATVisualScrollerContainerView *)v5 centerXAnchor];
      v39 = [leftAnchor3 constraintEqualToAnchor:centerXAnchor2];
      [v39 setActive:1];

      heightAnchor = [(SCATVisualScrollerContainerView *)v5 heightAnchor];
      +[SCATVisualScrollerView scrollerSize];
      v42 = [heightAnchor constraintEqualToConstant:v41 + 20.0];
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
      leftAnchor4 = [(SCATVisualScrollerView *)v43 leftAnchor];
      leftAnchor5 = [(SCATVisualScrollerContainerView *)v5 leftAnchor];
      v47 = [leftAnchor4 constraintEqualToAnchor:leftAnchor5];
      [v47 setActive:1];

      topAnchor5 = [(SCATVisualScrollerView *)v43 topAnchor];
      topAnchor6 = [(SCATVisualScrollerContainerView *)v5 topAnchor];
      v50 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
      [v50 setActive:1];

      rightAnchor4 = [(SCATVisualScrollerView *)v43 rightAnchor];
      rightAnchor5 = [(SCATVisualScrollerContainerView *)v5 rightAnchor];
      v53 = [rightAnchor4 constraintEqualToAnchor:rightAnchor5];
      [v53 setActive:1];

      bottomAnchor5 = [(SCATVisualScrollerView *)v43 bottomAnchor];
      centerYAnchor = [(SCATVisualScrollerContainerView *)v5 centerYAnchor];
      v56 = [bottomAnchor5 constraintEqualToAnchor:centerYAnchor];
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
      leftAnchor6 = [(SCATVisualScrollerView *)v25 leftAnchor];
      leftAnchor7 = [(SCATVisualScrollerContainerView *)v5 leftAnchor];
      v60 = [leftAnchor6 constraintEqualToAnchor:leftAnchor7];
      [v60 setActive:1];

      bottomAnchor6 = [(SCATVisualScrollerView *)v25 bottomAnchor];
      bottomAnchor7 = [(SCATVisualScrollerContainerView *)v5 bottomAnchor];
      v63 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
      [v63 setActive:1];

      rightAnchor6 = [(SCATVisualScrollerView *)v25 rightAnchor];
      rightAnchor7 = [(SCATVisualScrollerContainerView *)v5 rightAnchor];
      v66 = [rightAnchor6 constraintEqualToAnchor:rightAnchor7];
      [v66 setActive:1];

      topAnchor7 = [(SCATVisualScrollerView *)v25 topAnchor];
      centerYAnchor2 = [(SCATVisualScrollerContainerView *)v5 centerYAnchor];
      v69 = [topAnchor7 constraintEqualToAnchor:centerYAnchor2];
      [v69 setActive:1];

      heightAnchor = [(SCATVisualScrollerContainerView *)v5 widthAnchor];
      +[SCATVisualScrollerView scrollerSize];
      v42 = [heightAnchor constraintEqualToConstant:v70 + 20.0];
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
  borderLayer = [(SCATVisualScrollerContainerView *)self borderLayer];
  [borderLayer setFrame:{x, y, v7, v8}];

  if (width >= height)
  {
    v10 = height;
  }

  else
  {
    v10 = width;
  }

  v11 = v10 * 0.5;
  layer = [(SCATVisualScrollerContainerView *)self layer];
  [layer setCornerRadius:v11];

  backgroundView = [(SCATVisualScrollerContainerView *)self backgroundView];
  layer2 = [backgroundView layer];
  [layer2 setCornerRadius:v11];

  scrollerContainerView = [(SCATVisualScrollerContainerView *)self scrollerContainerView];
  layer3 = [scrollerContainerView layer];
  [layer3 setCornerRadius:v11];

  borderLayer2 = [(SCATVisualScrollerContainerView *)self borderLayer];
  [borderLayer2 bounds];
  v19 = v18;

  borderLayer3 = [(SCATVisualScrollerContainerView *)self borderLayer];
  [borderLayer3 bounds];
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
  borderLayer4 = [(SCATVisualScrollerContainerView *)self borderLayer];
  [borderLayer4 setCornerRadius:v24];
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

- (BOOL)updateFocusState:(int64_t)state
{
  v50.receiver = self;
  v50.super_class = SCATVisualScrollerContainerView;
  [(SCATCustomFocusingView *)&v50 updateFocusState:?];
  [(SCATVisualScrollerContainerView *)self bounds];
  if (!state)
  {
    v53 = CGRectInset(*&v5, -2.0, -2.0);
    x = v53.origin.x;
    y = v53.origin.y;
    width = v53.size.width;
    height = v53.size.height;
    borderLayer = [(SCATVisualScrollerContainerView *)self borderLayer];
    [borderLayer setFrame:{x, y, width, height}];

    [objc_opt_class() unfocusedStateBorderThickness];
    v34 = v33;
    borderLayer2 = [(SCATVisualScrollerContainerView *)self borderLayer];
    [borderLayer2 setBorderWidth:v34];

    unfocusedStateColor = [objc_opt_class() unfocusedStateColor];
    goto LABEL_7;
  }

  if (state == 2)
  {
    v52 = CGRectInset(*&v5, -2.0, -2.0);
    v19 = v52.origin.x;
    v20 = v52.origin.y;
    v21 = v52.size.width;
    v22 = v52.size.height;
    borderLayer3 = [(SCATVisualScrollerContainerView *)self borderLayer];
    [borderLayer3 setFrame:{v19, v20, v21, v22}];

    [objc_opt_class() unfocusedStateBorderThickness];
    v25 = v24;
    borderLayer4 = [(SCATVisualScrollerContainerView *)self borderLayer];
    [borderLayer4 setBorderWidth:v25];

    unfocusedStateColor = [objc_opt_class() focusedGroupStateColor];
LABEL_7:
    focusedStateColor = unfocusedStateColor;
    v18 = 0.4;
    goto LABEL_8;
  }

  if (state != 1)
  {
    goto LABEL_9;
  }

  v51 = CGRectInset(*&v5, -7.0, -7.0);
  v9 = v51.origin.x;
  v10 = v51.origin.y;
  v11 = v51.size.width;
  v12 = v51.size.height;
  borderLayer5 = [(SCATVisualScrollerContainerView *)self borderLayer];
  [borderLayer5 setFrame:{v9, v10, v11, v12}];

  [objc_opt_class() focusedStateBorderThickness];
  v15 = v14;
  borderLayer6 = [(SCATVisualScrollerContainerView *)self borderLayer];
  [borderLayer6 setBorderWidth:v15];

  focusedStateColor = [objc_opt_class() focusedStateColor];
  v18 = 1.0;
LABEL_8:
  cGColor = [focusedStateColor CGColor];
  borderLayer7 = [(SCATVisualScrollerContainerView *)self borderLayer];
  [borderLayer7 setBorderColor:cGColor];

  borderLayer8 = [(SCATVisualScrollerContainerView *)self borderLayer];
  *&v39 = v18;
  [borderLayer8 setOpacity:v39];

LABEL_9:
  borderLayer9 = [(SCATVisualScrollerContainerView *)self borderLayer];
  [borderLayer9 bounds];
  v42 = v41;

  borderLayer10 = [(SCATVisualScrollerContainerView *)self borderLayer];
  [borderLayer10 bounds];
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
  borderLayer11 = [(SCATVisualScrollerContainerView *)self borderLayer];
  [borderLayer11 setCornerRadius:v47];

  return 1;
}

- (SCATVisualScrollerContainerViewScrollingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end