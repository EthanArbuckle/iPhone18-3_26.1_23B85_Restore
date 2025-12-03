@interface TransportTypeSegment
- (TransportTypeSegment)initWithTransportType:(int64_t)type;
- (void)_setupConstraints;
- (void)_updateViews;
- (void)didMoveToWindow;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
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
  iconView = [(TransportTypeSegment *)self iconView];
  [iconView setTintColor:v17];

  [(TransportTypeSegment *)self setBackgroundColor:v3];
  if ([(TransportTypeSegment *)self isSelected]&& sub_10000FA08(self) != 5)
  {
    layer = [(TransportTypeSegment *)self layer];
    [layer setShadowColor:0];

    layer2 = [(TransportTypeSegment *)self layer];
    [layer2 setShadowRadius:0.0];

    height = CGSizeZero.height;
    layer3 = [(TransportTypeSegment *)self layer];
    [layer3 setShadowOffset:{CGSizeZero.width, height}];
  }

  else
  {
    v5 = +[UIColor blackColor];
    cGColor = [v5 CGColor];
    layer4 = [(TransportTypeSegment *)self layer];
    [layer4 setShadowColor:cGColor];

    layer5 = [(TransportTypeSegment *)self layer];
    [layer5 setShadowRadius:4.0];

    layer6 = [(TransportTypeSegment *)self layer];
    [layer6 setShadowOffset:{0.0, 1.0}];

    layer7 = [(TransportTypeSegment *)self layer];
    [layer7 setShadowPathIsBounds:1];

    if ([(TransportTypeSegment *)self isSelected])
    {
      v11 = 0.1;
    }

    else
    {
      v11 = 0.0;
    }

    layer3 = [(TransportTypeSegment *)self layer];
    *&v13 = v11;
    [layer3 setShadowOpacity:v13];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(TransportTypeSegment *)self isHighlighted]!= highlighted)
  {
    v7.receiver = self;
    v7.super_class = TransportTypeSegment;
    [(TransportTypeSegment *)&v7 setHighlighted:highlightedCopy];
    window = [(TransportTypeSegment *)self window];

    if (window)
    {
      v6 = 0.200000003;
      if (!highlightedCopy)
      {
        v6 = 1.0;
      }

      [(TransportTypeSegment *)self setAlpha:v6];
    }
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if ([(TransportTypeSegment *)self isSelected]!= selected)
  {
    v6.receiver = self;
    v6.super_class = TransportTypeSegment;
    [(TransportTypeSegment *)&v6 setSelected:selectedCopy];
    window = [(TransportTypeSegment *)self window];

    if (window)
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
  window = [(TransportTypeSegment *)self window];

  if (window)
  {
    [(TransportTypeSegment *)self _updateViews];
  }
}

- (void)_setupConstraints
{
  v28 = objc_alloc_init(NSMutableArray);
  iconView = [(TransportTypeSegment *)self iconView];
  centerXAnchor = [iconView centerXAnchor];
  centerXAnchor2 = [(TransportTypeSegment *)self centerXAnchor];
  v24 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v29[0] = v24;
  iconView2 = [(TransportTypeSegment *)self iconView];
  centerYAnchor = [iconView2 centerYAnchor];
  centerYAnchor2 = [(TransportTypeSegment *)self centerYAnchor];
  v20 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v29[1] = v20;
  iconView3 = [(TransportTypeSegment *)self iconView];
  topAnchor = [iconView3 topAnchor];
  topAnchor2 = [(TransportTypeSegment *)self topAnchor];
  v16 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:3.0];
  v29[2] = v16;
  iconView4 = [(TransportTypeSegment *)self iconView];
  leadingAnchor = [iconView4 leadingAnchor];
  leadingAnchor2 = [(TransportTypeSegment *)self leadingAnchor];
  v3 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:6.0];
  v29[3] = v3;
  bottomAnchor = [(TransportTypeSegment *)self bottomAnchor];
  iconView5 = [(TransportTypeSegment *)self iconView];
  bottomAnchor2 = [iconView5 bottomAnchor];
  v7 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:3.0];
  v29[4] = v7;
  trailingAnchor = [(TransportTypeSegment *)self trailingAnchor];
  iconView6 = [(TransportTypeSegment *)self iconView];
  trailingAnchor2 = [iconView6 trailingAnchor];
  v11 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2 constant:6.0];
  v29[5] = v11;
  v12 = [NSArray arrayWithObjects:v29 count:6];
  [v28 addObjectsFromArray:v12];

  [NSLayoutConstraint activateConstraints:v28];
}

- (TransportTypeSegment)initWithTransportType:(int64_t)type
{
  v32.receiver = self;
  v32.super_class = TransportTypeSegment;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(TransportTypeSegment *)&v32 initWithFrame:CGRectZero.origin.x, y, width, height];
  v8 = height;
  if (height)
  {
    [(TransportTypeSegment *)height setClipsToBounds:0];
    v9 = +[UIColor clearColor];
    [(TransportTypeSegment *)v8 setBackgroundColor:v9];

    [(TransportTypeSegment *)v8 setExclusiveTouch:1];
    [(TransportTypeSegment *)v8 setShowsLargeContentViewer:1];
    if ((type - 1) > 4)
    {
      v12 = 0;
    }

    else
    {
      v10 = *(&off_101652DB0 + type - 1);
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
    v8->_transportType = type;
    v17 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    iconView = v8->_iconView;
    v8->_iconView = v17;

    [(UIImageView *)v8->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v8->_iconView setContentMode:1];
    [(TransportTypeSegment *)v8 addSubview:v8->_iconView];
    if (type <= 2)
    {
      if (type == 1)
      {
        [(TransportTypeSegment *)v8 setAccessibilityIdentifier:@"DriveButton"];
        v19 = +[NSBundle mainBundle];
        v20 = v19;
        v21 = @"Drive [Transport Type Picker, Accessibility]";
        goto LABEL_16;
      }

      if (type == 2)
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
      switch(type)
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
          typeCopy = type;
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