@interface MTATimerPresetView
- (MTATimerPresetView)initWithFrame:(CGRect)frame;
- (void)localSetup;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setPresetItem:(id)item;
- (void)setupCircleView;
- (void)setupLayoutConstraints;
- (void)setupNumberLabel;
- (void)setupUnitLabel;
@end

@implementation MTATimerPresetView

- (MTATimerPresetView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MTATimerPresetView;
  v3 = [(MTATimerPresetView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MTATimerPresetView *)v3 localSetup];
  }

  return v4;
}

- (void)setPresetItem:(id)item
{
  itemCopy = item;
  number = [itemCopy number];
  numberLabel = [(MTATimerPresetView *)self numberLabel];
  [numberLabel setText:number];

  unit = [itemCopy unit];

  unitLabel = [(MTATimerPresetView *)self unitLabel];
  [unitLabel setText:unit];
}

- (void)localSetup
{
  [(MTATimerPresetView *)self setupCircleView];
  [(MTATimerPresetView *)self setupNumberLabel];
  [(MTATimerPresetView *)self setupUnitLabel];

  [(MTATimerPresetView *)self setupLayoutConstraints];
}

- (void)setupCircleView
{
  v3 = objc_opt_new();
  [(MTATimerPresetView *)self setCircleView:v3];

  circleView = [(MTATimerPresetView *)self circleView];
  [circleView setTranslatesAutoresizingMaskIntoConstraints:0];

  [(MTATimerPresetView *)self bounds];
  v6 = v5;
  [(MTATimerPresetView *)self bounds];
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8 * 0.5;
  circleView2 = [(MTATimerPresetView *)self circleView];
  layer = [circleView2 layer];
  [layer setCornerRadius:v9];

  v12 = +[UIColor mtui_foregroundColor];
  circleView3 = [(MTATimerPresetView *)self circleView];
  [circleView3 setBackgroundColor:v12];

  circleView4 = [(MTATimerPresetView *)self circleView];
  [(MTATimerPresetView *)self addSubview:circleView4];

  circleView5 = [(MTATimerPresetView *)self circleView];
  [circleView5 setHoverStyle:0];

  v17 = +[UIShape circleShape];
  hoverStyle = [(MTATimerPresetView *)self hoverStyle];
  [hoverStyle setShape:v17];
}

- (void)setupNumberLabel
{
  v3 = objc_opt_new();
  [(MTATimerPresetView *)self setNumberLabel:v3];

  numberLabel = [(MTATimerPresetView *)self numberLabel];
  [numberLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = +[UIColor systemWhiteColor];
  numberLabel2 = [(MTATimerPresetView *)self numberLabel];
  [numberLabel2 setTextColor:v5];

  numberLabel3 = [(MTATimerPresetView *)self numberLabel];
  [numberLabel3 setTextAlignment:1];

  v8 = [UIFont systemFontOfSize:28.0];
  numberLabel4 = [(MTATimerPresetView *)self numberLabel];
  [numberLabel4 setFont:v8];

  numberLabel5 = [(MTATimerPresetView *)self numberLabel];
  [(MTATimerPresetView *)self addSubview:numberLabel5];
}

- (void)setupUnitLabel
{
  v3 = objc_opt_new();
  [(MTATimerPresetView *)self setUnitLabel:v3];

  unitLabel = [(MTATimerPresetView *)self unitLabel];
  [unitLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = +[UIColor systemOrangeColor];
  unitLabel2 = [(MTATimerPresetView *)self unitLabel];
  [unitLabel2 setTextColor:v5];

  unitLabel3 = [(MTATimerPresetView *)self unitLabel];
  [unitLabel3 setTextAlignment:1];

  unitLabel4 = [(MTATimerPresetView *)self unitLabel];
  [(MTATimerPresetView *)self addSubview:unitLabel4];
}

- (void)setupLayoutConstraints
{
  v65 = objc_opt_new();
  circleView = [(MTATimerPresetView *)self circleView];
  leadingAnchor = [circleView leadingAnchor];
  leadingAnchor2 = [(MTATimerPresetView *)self leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v65 addObject:v6];

  circleView2 = [(MTATimerPresetView *)self circleView];
  trailingAnchor = [circleView2 trailingAnchor];
  trailingAnchor2 = [(MTATimerPresetView *)self trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v65 addObject:v10];

  circleView3 = [(MTATimerPresetView *)self circleView];
  topAnchor = [circleView3 topAnchor];
  topAnchor2 = [(MTATimerPresetView *)self topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v65 addObject:v14];

  circleView4 = [(MTATimerPresetView *)self circleView];
  bottomAnchor = [circleView4 bottomAnchor];
  bottomAnchor2 = [(MTATimerPresetView *)self bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v65 addObject:v18];

  v19 = objc_opt_new();
  [(MTATimerPresetView *)self addLayoutGuide:v19];
  centerXAnchor = [v19 centerXAnchor];
  centerXAnchor2 = [(MTATimerPresetView *)self centerXAnchor];
  v22 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v65 addObject:v22];

  centerYAnchor = [v19 centerYAnchor];
  centerYAnchor2 = [(MTATimerPresetView *)self centerYAnchor];
  v25 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v65 addObject:v25];

  numberLabel = [(MTATimerPresetView *)self numberLabel];
  leadingAnchor3 = [numberLabel leadingAnchor];
  leadingAnchor4 = [v19 leadingAnchor];
  v29 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
  [v65 addObject:v29];

  numberLabel2 = [(MTATimerPresetView *)self numberLabel];
  trailingAnchor3 = [numberLabel2 trailingAnchor];
  trailingAnchor4 = [v19 trailingAnchor];
  v33 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
  [v65 addObject:v33];

  numberLabel3 = [(MTATimerPresetView *)self numberLabel];
  centerXAnchor3 = [numberLabel3 centerXAnchor];
  centerXAnchor4 = [v19 centerXAnchor];
  v37 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];

  LODWORD(v38) = 1144750080;
  [v37 setPriority:v38];
  [v65 addObject:v37];
  numberLabel4 = [(MTATimerPresetView *)self numberLabel];
  topAnchor3 = [numberLabel4 topAnchor];
  topAnchor4 = [v19 topAnchor];
  v42 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v65 addObject:v42];

  numberLabel5 = [(MTATimerPresetView *)self numberLabel];
  bottomAnchor3 = [numberLabel5 bottomAnchor];
  unitLabel = [(MTATimerPresetView *)self unitLabel];
  topAnchor5 = [unitLabel topAnchor];
  v47 = [bottomAnchor3 constraintEqualToAnchor:topAnchor5];
  [v65 addObject:v47];

  unitLabel2 = [(MTATimerPresetView *)self unitLabel];
  leadingAnchor5 = [unitLabel2 leadingAnchor];
  leadingAnchor6 = [v19 leadingAnchor];
  v51 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:leadingAnchor6];
  [v65 addObject:v51];

  unitLabel3 = [(MTATimerPresetView *)self unitLabel];
  trailingAnchor5 = [unitLabel3 trailingAnchor];
  trailingAnchor6 = [v19 trailingAnchor];
  v55 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6];
  [v65 addObject:v55];

  unitLabel4 = [(MTATimerPresetView *)self unitLabel];
  centerXAnchor5 = [unitLabel4 centerXAnchor];
  centerXAnchor6 = [v19 centerXAnchor];
  v59 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];

  LODWORD(v60) = 1144750080;
  [v59 setPriority:v60];
  [v65 addObject:v59];
  unitLabel5 = [(MTATimerPresetView *)self unitLabel];
  bottomAnchor4 = [unitLabel5 bottomAnchor];
  bottomAnchor5 = [v19 bottomAnchor];
  v64 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  [v65 addObject:v64];

  [NSLayoutConstraint activateConstraints:v65];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v16.receiver = self;
  v16.super_class = MTATimerPresetView;
  [(MTATimerPresetView *)&v16 setHighlighted:?];
  if (highlightedCopy)
  {
    v5 = +[UIColor mtui_cellHighlightColor];
    circleView = [(MTATimerPresetView *)self circleView];
    [circleView setBackgroundColor:v5];

    v7 = +[UIColor mtui_secondaryTextColor];
    numberLabel = [(MTATimerPresetView *)self numberLabel];
    [numberLabel setTextColor:v7];

    v9 = +[UIColor systemOrangeColor];
    unitLabel2 = [v9 colorWithAlphaComponent:0.28];
    unitLabel = [(MTATimerPresetView *)self unitLabel];
    [unitLabel setTextColor:unitLabel2];
  }

  else
  {
    v12 = +[UIColor mtui_foregroundColor];
    circleView2 = [(MTATimerPresetView *)self circleView];
    [circleView2 setBackgroundColor:v12];

    v14 = +[UIColor systemWhiteColor];
    numberLabel2 = [(MTATimerPresetView *)self numberLabel];
    [numberLabel2 setTextColor:v14];

    v9 = +[UIColor systemOrangeColor];
    unitLabel2 = [(MTATimerPresetView *)self unitLabel];
    [unitLabel2 setTextColor:v9];
  }
}

@end