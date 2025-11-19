@interface MapsImpressionsFloatingDebugViewController
- (MUImpressionsCalculator)calculator;
- (void)_updateDebugText;
- (void)setCalculator:(id)a3;
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

  v7 = [(MapsFloatingDebugViewController *)self contentView];
  [v7 addSubview:self->_debugLabel];

  v27 = [(UILabel *)self->_debugLabel topAnchor];
  v28 = [(MapsFloatingDebugViewController *)self contentView];
  v26 = [v28 topAnchor];
  v25 = [v27 constraintEqualToAnchor:v26 constant:5.0];
  v31[0] = v25;
  v23 = [(UILabel *)self->_debugLabel bottomAnchor];
  v24 = [(MapsFloatingDebugViewController *)self contentView];
  v22 = [v24 bottomAnchor];
  v21 = [v23 constraintEqualToAnchor:v22 constant:-5.0];
  v31[1] = v21;
  v20 = [(UILabel *)self->_debugLabel leadingAnchor];
  v8 = [(MapsFloatingDebugViewController *)self contentView];
  v9 = [v8 leadingAnchor];
  v10 = [v20 constraintEqualToAnchor:v9 constant:5.0];
  v31[2] = v10;
  v11 = [(UILabel *)self->_debugLabel trailingAnchor];
  v12 = [(MapsFloatingDebugViewController *)self contentView];
  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13 constant:-5.0];
  v31[3] = v14;
  v15 = [NSArray arrayWithObjects:v31 count:4];
  [v29 addObjectsFromArray:v15];

  [NSLayoutConstraint activateConstraints:v29];
  v16 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:3 scale:35.0];
  v17 = [UIImage systemImageNamed:@"eyeglasses" withConfiguration:v16];
  v18 = [v17 imageWithRenderingMode:2];
  v19 = [(MapsFloatingDebugViewController *)self thumbnailImageView];
  [v19 setImage:v18];
}

- (void)_updateDebugText
{
  v3 = [(MapsImpressionsFloatingDebugViewController *)self view];
  [v3 setHidden:0];

  WeakRetained = objc_loadWeakRetained(&self->_calculator);
  v4 = [WeakRetained debugState];
  [(UILabel *)self->_debugLabel setText:v4];
}

- (void)setCalculator:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_calculator);

  if (WeakRetained != v4)
  {
    [v4 setObserverBlock:0];
    objc_storeWeak(&self->_calculator, v4);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100F75B3C;
    v6[3] = &unk_101661B18;
    v6[4] = self;
    [v4 setObserverBlock:v6];
  }
}

@end