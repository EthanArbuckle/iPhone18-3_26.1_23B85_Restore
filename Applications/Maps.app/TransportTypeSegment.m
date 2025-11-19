@interface TransportTypeSegment
- (TransportTypeSegment)initWithTransportType:(int64_t)a3;
- (void)_setupConstraints;
- (void)_updateViews;
- (void)didMoveToWindow;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation TransportTypeSegment

- (void)_updateViews
{
  [(TransportTypeSegment *)self _setContinuousCornerRadius:8.0];
  if ([(TransportTypeSegment *)self isSelected])
  {
    v17 = [UIColor colorNamed:@"TransportTypePicker-SelectedIcon"];
    [UIColor colorNamed:@"TransportTypePicker-SelectedSegment"];
  }

  else
  {
    v17 = +[UIColor secondaryLabelColor];
    +[UIColor tertiarySystemFillColor];
  }
  v3 = ;
  v4 = [(TransportTypeSegment *)self iconView];
  [v4 setTintColor:v17];

  [(TransportTypeSegment *)self setBackgroundColor:v3];
  if ([(TransportTypeSegment *)self isSelected]&& sub_10000FA08(self) != 5)
  {
    v14 = [(TransportTypeSegment *)self layer];
    [v14 setShadowColor:0];

    v15 = [(TransportTypeSegment *)self layer];
    [v15 setShadowRadius:0.0];

    height = CGSizeZero.height;
    v12 = [(TransportTypeSegment *)self layer];
    [v12 setShadowOffset:{CGSizeZero.width, height}];
  }

  else
  {
    v5 = +[UIColor blackColor];
    v6 = [v5 CGColor];
    v7 = [(TransportTypeSegment *)self layer];
    [v7 setShadowColor:v6];

    v8 = [(TransportTypeSegment *)self layer];
    [v8 setShadowRadius:4.0];

    v9 = [(TransportTypeSegment *)self layer];
    [v9 setShadowOffset:{0.0, 1.0}];

    v10 = [(TransportTypeSegment *)self layer];
    [v10 setShadowPathIsBounds:1];

    if ([(TransportTypeSegment *)self isSelected])
    {
      v11 = 0.1;
    }

    else
    {
      v11 = 0.0;
    }

    v12 = [(TransportTypeSegment *)self layer];
    *&v13 = v11;
    [v12 setShadowOpacity:v13];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(TransportTypeSegment *)self isHighlighted]!= a3)
  {
    v7.receiver = self;
    v7.super_class = TransportTypeSegment;
    [(TransportTypeSegment *)&v7 setHighlighted:v3];
    v5 = [(TransportTypeSegment *)self window];

    if (v5)
    {
      v6 = 0.200000003;
      if (!v3)
      {
        v6 = 1.0;
      }

      [(TransportTypeSegment *)self setAlpha:v6];
    }
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  if ([(TransportTypeSegment *)self isSelected]!= a3)
  {
    v6.receiver = self;
    v6.super_class = TransportTypeSegment;
    [(TransportTypeSegment *)&v6 setSelected:v3];
    v5 = [(TransportTypeSegment *)self window];

    if (v5)
    {
      [(TransportTypeSegment *)self _updateViews];
    }
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = TransportTypeSegment;
  [(TransportTypeSegment *)&v4 didMoveToWindow];
  v3 = [(TransportTypeSegment *)self window];

  if (v3)
  {
    [(TransportTypeSegment *)self _updateViews];
  }
}

- (void)_setupConstraints
{
  v28 = objc_alloc_init(NSMutableArray);
  v27 = [(TransportTypeSegment *)self iconView];
  v26 = [v27 centerXAnchor];
  v25 = [(TransportTypeSegment *)self centerXAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v29[0] = v24;
  v23 = [(TransportTypeSegment *)self iconView];
  v22 = [v23 centerYAnchor];
  v21 = [(TransportTypeSegment *)self centerYAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v29[1] = v20;
  v19 = [(TransportTypeSegment *)self iconView];
  v18 = [v19 topAnchor];
  v17 = [(TransportTypeSegment *)self topAnchor];
  v16 = [v18 constraintGreaterThanOrEqualToAnchor:v17 constant:3.0];
  v29[2] = v16;
  v15 = [(TransportTypeSegment *)self iconView];
  v14 = [v15 leadingAnchor];
  v13 = [(TransportTypeSegment *)self leadingAnchor];
  v3 = [v14 constraintGreaterThanOrEqualToAnchor:v13 constant:6.0];
  v29[3] = v3;
  v4 = [(TransportTypeSegment *)self bottomAnchor];
  v5 = [(TransportTypeSegment *)self iconView];
  v6 = [v5 bottomAnchor];
  v7 = [v4 constraintGreaterThanOrEqualToAnchor:v6 constant:3.0];
  v29[4] = v7;
  v8 = [(TransportTypeSegment *)self trailingAnchor];
  v9 = [(TransportTypeSegment *)self iconView];
  v10 = [v9 trailingAnchor];
  v11 = [v8 constraintGreaterThanOrEqualToAnchor:v10 constant:6.0];
  v29[5] = v11;
  v12 = [NSArray arrayWithObjects:v29 count:6];
  [v28 addObjectsFromArray:v12];

  [NSLayoutConstraint activateConstraints:v28];
}

- (TransportTypeSegment)initWithTransportType:(int64_t)a3
{
  v32.receiver = self;
  v32.super_class = TransportTypeSegment;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [(TransportTypeSegment *)&v32 initWithFrame:CGRectZero.origin.x, y, width, height];
  v8 = v7;
  if (v7)
  {
    [(TransportTypeSegment *)v7 setClipsToBounds:0];
    v9 = +[UIColor clearColor];
    [(TransportTypeSegment *)v8 setBackgroundColor:v9];

    [(TransportTypeSegment *)v8 setExclusiveTouch:1];
    [(TransportTypeSegment *)v8 setShowsLargeContentViewer:1];
    if ((a3 - 1) > 4)
    {
      v12 = 0;
    }

    else
    {
      v10 = *(&off_101652DB0 + a3 - 1);
      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:v10 value:@"localized string not found" table:0];
    }

    [(TransportTypeSegment *)v8 setLargeContentTitle:v12];

    LODWORD(v13) = 1144750080;
    [(TransportTypeSegment *)v8 setContentHuggingPriority:1 forAxis:v13];
    LODWORD(v14) = 1144750080;
    [(TransportTypeSegment *)v8 setContentHuggingPriority:0 forAxis:v14];
    LODWORD(v15) = 1148846080;
    [(TransportTypeSegment *)v8 setContentCompressionResistancePriority:1 forAxis:v15];
    LODWORD(v16) = 1148846080;
    [(TransportTypeSegment *)v8 setContentCompressionResistancePriority:0 forAxis:v16];
    v8->_transportType = a3;
    v17 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    iconView = v8->_iconView;
    v8->_iconView = v17;

    [(UIImageView *)v8->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v8->_iconView setContentMode:1];
    [(TransportTypeSegment *)v8 addSubview:v8->_iconView];
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        [(TransportTypeSegment *)v8 setAccessibilityIdentifier:@"DriveButton"];
        v19 = +[NSBundle mainBundle];
        v20 = v19;
        v21 = @"Drive [Transport Type Picker, Accessibility]";
        goto LABEL_16;
      }

      if (a3 == 2)
      {
        [(TransportTypeSegment *)v8 setAccessibilityIdentifier:@"WalkButton"];
        v19 = +[NSBundle mainBundle];
        v20 = v19;
        v21 = @"Walk [Transport Type Picker, Accessibility]";
        goto LABEL_16;
      }
    }

    else
    {
      switch(a3)
      {
        case 3:
          [(TransportTypeSegment *)v8 setAccessibilityIdentifier:@"TransitButton"];
          v19 = +[NSBundle mainBundle];
          v20 = v19;
          v21 = @"Transit [Transport Type Picker, Accessibility]";
          goto LABEL_16;
        case 4:
          [(TransportTypeSegment *)v8 setAccessibilityIdentifier:@"RideshareButton"];
          v19 = +[NSBundle mainBundle];
          v20 = v19;
          v21 = @"Ride [Transport Type Picker, Accessibility]";
          goto LABEL_16;
        case 5:
          [(TransportTypeSegment *)v8 setAccessibilityIdentifier:@"CyclingButton"];
          v19 = +[NSBundle mainBundle];
          v20 = v19;
          v21 = @"Cycle [Transport Type Picker, Accessibility]";
LABEL_16:
          v22 = [v19 localizedStringForKey:v21 value:@"localized string not found" table:0];

LABEL_17:
          [(TransportTypeSegment *)v8 setAccessibilityLabel:v22];

          [(TransportTypeSegment *)v8 _setupConstraints];
          v26 = _NSConcreteStackBlock;
          v27 = 3221225472;
          v28 = sub_100D65B7C;
          v29 = &unk_101661650;
          v31 = a3;
          v23 = v8;
          v30 = v23;
          dispatch_async(&_dispatch_main_q, &v26);
          [(TransportTypeSegment *)v23 _updateViews:v26];
          v24 = v23;

          goto LABEL_18;
      }
    }

    [(TransportTypeSegment *)v8 setAccessibilityIdentifier:0];
    v22 = 0;
    goto LABEL_17;
  }

LABEL_18:

  return v8;
}

@end