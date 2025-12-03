@interface RecordingTimeDisplayView
- (RecordingTimeDisplayView)initWithFrame:(CGRect)frame;
- (id)timerLabelFont;
- (void)contentSizeCategoryChanged:(id)changed;
- (void)dealloc;
- (void)layoutSubviews;
- (void)updateConstraints;
@end

@implementation RecordingTimeDisplayView

- (RecordingTimeDisplayView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = RecordingTimeDisplayView;
  v3 = [(RecordingTimeDisplayView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)contentSizeCategoryChanged:(id)changed
{
  [(RecordingTimeDisplayView *)self setNeedsLayout];

  [(RecordingTimeDisplayView *)self setNeedsUpdateConstraints];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = RecordingTimeDisplayView;
  [(RecordingTimeDisplayView *)&v9 layoutSubviews];
  timerLabelFont = [(RecordingTimeDisplayView *)self timerLabelFont];
  timerLabel = [(RecordingTimeDisplayView *)self timerLabel];
  [timerLabel setFont:timerLabelFont];

  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  LODWORD(timerLabel) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (timerLabel)
  {
    v6 = 4.5;
  }

  else
  {
    v6 = 2.5;
  }

  dotView = [(RecordingTimeDisplayView *)self dotView];
  layer = [dotView layer];
  [layer setCornerRadius:v6];
}

- (id)timerLabelFont
{
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  v3 = [UIFont appropriateContentSizeCategoryForCategory:preferredContentSizeCategory maxCategory:UIContentSizeCategoryAccessibilityMedium];
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
  constraints = [(RecordingTimeDisplayView *)self constraints];

  if (constraints)
  {
    constraints2 = [(RecordingTimeDisplayView *)self constraints];
    [NSLayoutConstraint deactivateConstraints:constraints2];

    [(RecordingTimeDisplayView *)self setConstraints:0];
  }

  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v6 = 9.0;
  }

  else
  {
    v6 = 5.0;
  }

  v7 = objc_alloc_init(NSMutableArray);
  dotView = [(RecordingTimeDisplayView *)self dotView];
  widthAnchor = [dotView widthAnchor];
  v10 = [widthAnchor constraintEqualToConstant:v6];
  [v7 addObject:v10];

  dotView2 = [(RecordingTimeDisplayView *)self dotView];
  heightAnchor = [dotView2 heightAnchor];
  v13 = [heightAnchor constraintEqualToConstant:v6];
  [v7 addObject:v13];

  dotView3 = [(RecordingTimeDisplayView *)self dotView];
  leadingAnchor = [dotView3 leadingAnchor];
  leadingAnchor2 = [(RecordingTimeDisplayView *)self leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v7 addObject:v17];

  dotView4 = [(RecordingTimeDisplayView *)self dotView];
  centerYAnchor = [dotView4 centerYAnchor];
  centerYAnchor2 = [(RecordingTimeDisplayView *)self centerYAnchor];
  v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v7 addObject:v21];

  timerLabel = [(RecordingTimeDisplayView *)self timerLabel];
  leadingAnchor3 = [timerLabel leadingAnchor];
  dotView5 = [(RecordingTimeDisplayView *)self dotView];
  trailingAnchor = [dotView5 trailingAnchor];
  preferredContentSizeCategory2 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);
  v28 = 4.0;
  if (IsAccessibilityCategory)
  {
    v28 = 6.0;
  }

  v29 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:v28];
  [v7 addObject:v29];

  timerLabel2 = [(RecordingTimeDisplayView *)self timerLabel];
  centerYAnchor3 = [timerLabel2 centerYAnchor];
  dotView6 = [(RecordingTimeDisplayView *)self dotView];
  centerYAnchor4 = [dotView6 centerYAnchor];
  v34 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v7 addObject:v34];

  timerLabel3 = [(RecordingTimeDisplayView *)self timerLabel];
  trailingAnchor2 = [timerLabel3 trailingAnchor];
  trailingAnchor3 = [(RecordingTimeDisplayView *)self trailingAnchor];
  v38 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  [v7 addObject:v38];

  timerLabel4 = [(RecordingTimeDisplayView *)self timerLabel];
  topAnchor = [timerLabel4 topAnchor];
  topAnchor2 = [(RecordingTimeDisplayView *)self topAnchor];
  v42 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v7 addObject:v42];

  timerLabel5 = [(RecordingTimeDisplayView *)self timerLabel];
  bottomAnchor = [timerLabel5 bottomAnchor];
  bottomAnchor2 = [(RecordingTimeDisplayView *)self bottomAnchor];
  v46 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v7 addObject:v46];

  [NSLayoutConstraint activateConstraints:v7];
  [(RecordingTimeDisplayView *)self setConstraints:v7];
}

@end