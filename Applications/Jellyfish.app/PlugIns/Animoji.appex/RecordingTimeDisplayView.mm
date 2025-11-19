@interface RecordingTimeDisplayView
- (RecordingTimeDisplayView)initWithFrame:(CGRect)a3;
- (id)timerLabelFont;
- (void)contentSizeCategoryChanged:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)updateConstraints;
@end

@implementation RecordingTimeDisplayView

- (RecordingTimeDisplayView)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = RecordingTimeDisplayView;
  v3 = [(RecordingTimeDisplayView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = +[UIColor redColor];
    [v8 setBackgroundColor:v9];

    [(RecordingTimeDisplayView *)v3 addSubview:v8];
    [(RecordingTimeDisplayView *)v3 setDotView:v8];
    v10 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setAdjustsFontSizeToFitWidth:1];
    [v10 setNumberOfLines:1];
    v11 = +[UIColor labelColor];
    [v10 setTextColor:v11];

    [(RecordingTimeDisplayView *)v3 addSubview:v10];
    [(RecordingTimeDisplayView *)v3 setTimerLabel:v10];
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v3 selector:"contentSizeCategoryChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = RecordingTimeDisplayView;
  [(RecordingTimeDisplayView *)&v4 dealloc];
}

- (void)contentSizeCategoryChanged:(id)a3
{
  [(RecordingTimeDisplayView *)self setNeedsLayout];

  [(RecordingTimeDisplayView *)self setNeedsUpdateConstraints];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = RecordingTimeDisplayView;
  [(RecordingTimeDisplayView *)&v9 layoutSubviews];
  v3 = [(RecordingTimeDisplayView *)self timerLabelFont];
  v4 = [(RecordingTimeDisplayView *)self timerLabel];
  [v4 setFont:v3];

  v5 = [UIApp preferredContentSizeCategory];
  LODWORD(v4) = UIContentSizeCategoryIsAccessibilityCategory(v5);

  if (v4)
  {
    v6 = 4.5;
  }

  else
  {
    v6 = 2.5;
  }

  v7 = [(RecordingTimeDisplayView *)self dotView];
  v8 = [v7 layer];
  [v8 setCornerRadius:v6];
}

- (id)timerLabelFont
{
  v2 = [UIApp preferredContentSizeCategory];
  v3 = [UIFont appropriateContentSizeCategoryForCategory:v2 maxCategory:UIContentSizeCategoryAccessibilityMedium];
  v4 = CTFontDescriptorCreateWithTextStyle();
  v12 = UIFontDescriptorTraitsAttribute;
  v10 = UIFontSymbolicTrait;
  v11 = &off_100036098;
  v5 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v13 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v7 = [v4 fontDescriptorByAddingAttributes:v6];

  v8 = [UIFont fontWithDescriptor:v7 size:0.0];

  return v8;
}

- (void)updateConstraints
{
  v47.receiver = self;
  v47.super_class = RecordingTimeDisplayView;
  [(RecordingTimeDisplayView *)&v47 updateConstraints];
  v3 = [(RecordingTimeDisplayView *)self constraints];

  if (v3)
  {
    v4 = [(RecordingTimeDisplayView *)self constraints];
    [NSLayoutConstraint deactivateConstraints:v4];

    [(RecordingTimeDisplayView *)self setConstraints:0];
  }

  v5 = [UIApp preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v5))
  {
    v6 = 9.0;
  }

  else
  {
    v6 = 5.0;
  }

  v7 = objc_alloc_init(NSMutableArray);
  v8 = [(RecordingTimeDisplayView *)self dotView];
  v9 = [v8 widthAnchor];
  v10 = [v9 constraintEqualToConstant:v6];
  [v7 addObject:v10];

  v11 = [(RecordingTimeDisplayView *)self dotView];
  v12 = [v11 heightAnchor];
  v13 = [v12 constraintEqualToConstant:v6];
  [v7 addObject:v13];

  v14 = [(RecordingTimeDisplayView *)self dotView];
  v15 = [v14 leadingAnchor];
  v16 = [(RecordingTimeDisplayView *)self leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  [v7 addObject:v17];

  v18 = [(RecordingTimeDisplayView *)self dotView];
  v19 = [v18 centerYAnchor];
  v20 = [(RecordingTimeDisplayView *)self centerYAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [v7 addObject:v21];

  v22 = [(RecordingTimeDisplayView *)self timerLabel];
  v23 = [v22 leadingAnchor];
  v24 = [(RecordingTimeDisplayView *)self dotView];
  v25 = [v24 trailingAnchor];
  v26 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v26);
  v28 = 4.0;
  if (IsAccessibilityCategory)
  {
    v28 = 6.0;
  }

  v29 = [v23 constraintEqualToAnchor:v25 constant:v28];
  [v7 addObject:v29];

  v30 = [(RecordingTimeDisplayView *)self timerLabel];
  v31 = [v30 centerYAnchor];
  v32 = [(RecordingTimeDisplayView *)self dotView];
  v33 = [v32 centerYAnchor];
  v34 = [v31 constraintEqualToAnchor:v33];
  [v7 addObject:v34];

  v35 = [(RecordingTimeDisplayView *)self timerLabel];
  v36 = [v35 trailingAnchor];
  v37 = [(RecordingTimeDisplayView *)self trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];
  [v7 addObject:v38];

  v39 = [(RecordingTimeDisplayView *)self timerLabel];
  v40 = [v39 topAnchor];
  v41 = [(RecordingTimeDisplayView *)self topAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];
  [v7 addObject:v42];

  v43 = [(RecordingTimeDisplayView *)self timerLabel];
  v44 = [v43 bottomAnchor];
  v45 = [(RecordingTimeDisplayView *)self bottomAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];
  [v7 addObject:v46];

  [NSLayoutConstraint activateConstraints:v7];
  [(RecordingTimeDisplayView *)self setConstraints:v7];
}

@end