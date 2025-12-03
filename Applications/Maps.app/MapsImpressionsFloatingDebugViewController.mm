@interface MapsImpressionsFloatingDebugViewController
- (MUImpressionsCalculator)calculator;
- (void)_updateDebugText;
- (void)setCalculator:(id)calculator;
- (void)viewDidLoad;
@end

@implementation MapsImpressionsFloatingDebugViewController

- (MUImpressionsCalculator)calculator
{
  WeakRetained = objc_loadWeakRetained(&self->_calculator);

  return WeakRetained;
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = MapsImpressionsFloatingDebugViewController;
  [(MapsFloatingDebugViewController *)&v30 viewDidLoad];
  v29 = +[NSMutableArray array];
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v4 = [UIFont monospacedSystemFontOfSize:9.0 weight:UIFontWeightRegular];
  [(UILabel *)v3 setFont:v4];

  [(UILabel *)v3 setNumberOfLines:0];
  [(UILabel *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[UIColor systemWhiteColor];
  [(UILabel *)v3 setTextColor:v5];

  debugLabel = self->_debugLabel;
  self->_debugLabel = v3;

  contentView = [(MapsFloatingDebugViewController *)self contentView];
  [contentView addSubview:self->_debugLabel];

  topAnchor = [(UILabel *)self->_debugLabel topAnchor];
  contentView2 = [(MapsFloatingDebugViewController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
  v31[0] = v25;
  bottomAnchor = [(UILabel *)self->_debugLabel bottomAnchor];
  contentView3 = [(MapsFloatingDebugViewController *)self contentView];
  bottomAnchor2 = [contentView3 bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
  v31[1] = v21;
  leadingAnchor = [(UILabel *)self->_debugLabel leadingAnchor];
  contentView4 = [(MapsFloatingDebugViewController *)self contentView];
  leadingAnchor2 = [contentView4 leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:5.0];
  v31[2] = v10;
  trailingAnchor = [(UILabel *)self->_debugLabel trailingAnchor];
  contentView5 = [(MapsFloatingDebugViewController *)self contentView];
  trailingAnchor2 = [contentView5 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-5.0];
  v31[3] = v14;
  v15 = [NSArray arrayWithObjects:v31 count:4];
  [v29 addObjectsFromArray:v15];

  [NSLayoutConstraint activateConstraints:v29];
  v16 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:3 scale:35.0];
  v17 = [UIImage systemImageNamed:@"eyeglasses" withConfiguration:v16];
  v18 = [v17 imageWithRenderingMode:2];
  thumbnailImageView = [(MapsFloatingDebugViewController *)self thumbnailImageView];
  [thumbnailImageView setImage:v18];
}

- (void)_updateDebugText
{
  view = [(MapsImpressionsFloatingDebugViewController *)self view];
  [view setHidden:0];

  WeakRetained = objc_loadWeakRetained(&self->_calculator);
  debugState = [WeakRetained debugState];
  [(UILabel *)self->_debugLabel setText:debugState];
}

- (void)setCalculator:(id)calculator
{
  calculatorCopy = calculator;
  WeakRetained = objc_loadWeakRetained(&self->_calculator);

  if (WeakRetained != calculatorCopy)
  {
    [calculatorCopy setObserverBlock:0];
    objc_storeWeak(&self->_calculator, calculatorCopy);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100F75B3C;
    v6[3] = &unk_101661B18;
    v6[4] = self;
    [calculatorCopy setObserverBlock:v6];
  }
}

@end