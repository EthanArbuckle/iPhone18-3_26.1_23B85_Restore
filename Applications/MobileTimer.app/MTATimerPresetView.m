@interface MTATimerPresetView
- (MTATimerPresetView)initWithFrame:(CGRect)a3;
- (void)localSetup;
- (void)setHighlighted:(BOOL)a3;
- (void)setPresetItem:(id)a3;
- (void)setupCircleView;
- (void)setupLayoutConstraints;
- (void)setupNumberLabel;
- (void)setupUnitLabel;
@end

@implementation MTATimerPresetView

- (MTATimerPresetView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MTATimerPresetView;
  v3 = [(MTATimerPresetView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MTATimerPresetView *)v3 localSetup];
  }

  return v4;
}

- (void)setPresetItem:(id)a3
{
  v4 = a3;
  v5 = [v4 number];
  v6 = [(MTATimerPresetView *)self numberLabel];
  [v6 setText:v5];

  v8 = [v4 unit];

  v7 = [(MTATimerPresetView *)self unitLabel];
  [v7 setText:v8];
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

  v4 = [(MTATimerPresetView *)self circleView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

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
  v10 = [(MTATimerPresetView *)self circleView];
  v11 = [v10 layer];
  [v11 setCornerRadius:v9];

  v12 = +[UIColor mtui_foregroundColor];
  v13 = [(MTATimerPresetView *)self circleView];
  [v13 setBackgroundColor:v12];

  v14 = [(MTATimerPresetView *)self circleView];
  [(MTATimerPresetView *)self addSubview:v14];

  v15 = [(MTATimerPresetView *)self circleView];
  [v15 setHoverStyle:0];

  v17 = +[UIShape circleShape];
  v16 = [(MTATimerPresetView *)self hoverStyle];
  [v16 setShape:v17];
}

- (void)setupNumberLabel
{
  v3 = objc_opt_new();
  [(MTATimerPresetView *)self setNumberLabel:v3];

  v4 = [(MTATimerPresetView *)self numberLabel];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = +[UIColor systemWhiteColor];
  v6 = [(MTATimerPresetView *)self numberLabel];
  [v6 setTextColor:v5];

  v7 = [(MTATimerPresetView *)self numberLabel];
  [v7 setTextAlignment:1];

  v8 = [UIFont systemFontOfSize:28.0];
  v9 = [(MTATimerPresetView *)self numberLabel];
  [v9 setFont:v8];

  v10 = [(MTATimerPresetView *)self numberLabel];
  [(MTATimerPresetView *)self addSubview:v10];
}

- (void)setupUnitLabel
{
  v3 = objc_opt_new();
  [(MTATimerPresetView *)self setUnitLabel:v3];

  v4 = [(MTATimerPresetView *)self unitLabel];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = +[UIColor systemOrangeColor];
  v6 = [(MTATimerPresetView *)self unitLabel];
  [v6 setTextColor:v5];

  v7 = [(MTATimerPresetView *)self unitLabel];
  [v7 setTextAlignment:1];

  v8 = [(MTATimerPresetView *)self unitLabel];
  [(MTATimerPresetView *)self addSubview:v8];
}

- (void)setupLayoutConstraints
{
  v65 = objc_opt_new();
  v3 = [(MTATimerPresetView *)self circleView];
  v4 = [v3 leadingAnchor];
  v5 = [(MTATimerPresetView *)self leadingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  [v65 addObject:v6];

  v7 = [(MTATimerPresetView *)self circleView];
  v8 = [v7 trailingAnchor];
  v9 = [(MTATimerPresetView *)self trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v65 addObject:v10];

  v11 = [(MTATimerPresetView *)self circleView];
  v12 = [v11 topAnchor];
  v13 = [(MTATimerPresetView *)self topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [v65 addObject:v14];

  v15 = [(MTATimerPresetView *)self circleView];
  v16 = [v15 bottomAnchor];
  v17 = [(MTATimerPresetView *)self bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [v65 addObject:v18];

  v19 = objc_opt_new();
  [(MTATimerPresetView *)self addLayoutGuide:v19];
  v20 = [v19 centerXAnchor];
  v21 = [(MTATimerPresetView *)self centerXAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  [v65 addObject:v22];

  v23 = [v19 centerYAnchor];
  v24 = [(MTATimerPresetView *)self centerYAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  [v65 addObject:v25];

  v26 = [(MTATimerPresetView *)self numberLabel];
  v27 = [v26 leadingAnchor];
  v28 = [v19 leadingAnchor];
  v29 = [v27 constraintGreaterThanOrEqualToAnchor:v28];
  [v65 addObject:v29];

  v30 = [(MTATimerPresetView *)self numberLabel];
  v31 = [v30 trailingAnchor];
  v32 = [v19 trailingAnchor];
  v33 = [v31 constraintLessThanOrEqualToAnchor:v32];
  [v65 addObject:v33];

  v34 = [(MTATimerPresetView *)self numberLabel];
  v35 = [v34 centerXAnchor];
  v36 = [v19 centerXAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  LODWORD(v38) = 1144750080;
  [v37 setPriority:v38];
  [v65 addObject:v37];
  v39 = [(MTATimerPresetView *)self numberLabel];
  v40 = [v39 topAnchor];
  v41 = [v19 topAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];
  [v65 addObject:v42];

  v43 = [(MTATimerPresetView *)self numberLabel];
  v44 = [v43 bottomAnchor];
  v45 = [(MTATimerPresetView *)self unitLabel];
  v46 = [v45 topAnchor];
  v47 = [v44 constraintEqualToAnchor:v46];
  [v65 addObject:v47];

  v48 = [(MTATimerPresetView *)self unitLabel];
  v49 = [v48 leadingAnchor];
  v50 = [v19 leadingAnchor];
  v51 = [v49 constraintGreaterThanOrEqualToAnchor:v50];
  [v65 addObject:v51];

  v52 = [(MTATimerPresetView *)self unitLabel];
  v53 = [v52 trailingAnchor];
  v54 = [v19 trailingAnchor];
  v55 = [v53 constraintLessThanOrEqualToAnchor:v54];
  [v65 addObject:v55];

  v56 = [(MTATimerPresetView *)self unitLabel];
  v57 = [v56 centerXAnchor];
  v58 = [v19 centerXAnchor];
  v59 = [v57 constraintEqualToAnchor:v58];

  LODWORD(v60) = 1144750080;
  [v59 setPriority:v60];
  [v65 addObject:v59];
  v61 = [(MTATimerPresetView *)self unitLabel];
  v62 = [v61 bottomAnchor];
  v63 = [v19 bottomAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];
  [v65 addObject:v64];

  [NSLayoutConstraint activateConstraints:v65];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v16.receiver = self;
  v16.super_class = MTATimerPresetView;
  [(MTATimerPresetView *)&v16 setHighlighted:?];
  if (v3)
  {
    v5 = +[UIColor mtui_cellHighlightColor];
    v6 = [(MTATimerPresetView *)self circleView];
    [v6 setBackgroundColor:v5];

    v7 = +[UIColor mtui_secondaryTextColor];
    v8 = [(MTATimerPresetView *)self numberLabel];
    [v8 setTextColor:v7];

    v9 = +[UIColor systemOrangeColor];
    v10 = [v9 colorWithAlphaComponent:0.28];
    v11 = [(MTATimerPresetView *)self unitLabel];
    [v11 setTextColor:v10];
  }

  else
  {
    v12 = +[UIColor mtui_foregroundColor];
    v13 = [(MTATimerPresetView *)self circleView];
    [v13 setBackgroundColor:v12];

    v14 = +[UIColor systemWhiteColor];
    v15 = [(MTATimerPresetView *)self numberLabel];
    [v15 setTextColor:v14];

    v9 = +[UIColor systemOrangeColor];
    v10 = [(MTATimerPresetView *)self unitLabel];
    [v10 setTextColor:v9];
  }
}

@end