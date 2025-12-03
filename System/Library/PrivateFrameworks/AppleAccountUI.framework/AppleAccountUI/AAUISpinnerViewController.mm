@interface AAUISpinnerViewController
- (AAUISpinnerViewController)initWithCoder:(id)coder;
- (AAUISpinnerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_commonInit;
- (void)setSpinning:(BOOL)spinning;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AAUISpinnerViewController

- (AAUISpinnerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = AAUISpinnerViewController;
  v4 = [(AAUISpinnerViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(AAUISpinnerViewController *)v4 _commonInit];
  }

  return v5;
}

- (AAUISpinnerViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AAUISpinnerViewController;
  v3 = [(AAUISpinnerViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(AAUISpinnerViewController *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  label = self->_label;
  self->_label = v3;

  [(UILabel *)self->_label setLineBreakMode:0];
  [(UILabel *)self->_label setNumberOfLines:0];
  [(UILabel *)self->_label setTextAlignment:1];
  [(UILabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  spinnerView = self->_spinnerView;
  self->_spinnerView = v5;

  [(UIActivityIndicatorView *)self->_spinnerView setTranslatesAutoresizingMaskIntoConstraints:0];

  [(AAUISpinnerViewController *)self setSpinning:1];
}

- (void)viewDidLoad
{
  v31[5] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = AAUISpinnerViewController;
  [(AAUISpinnerViewController *)&v30 viewDidLoad];
  view = [(AAUISpinnerViewController *)self view];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  view2 = [(AAUISpinnerViewController *)self view];
  [view2 addSubview:self->_label];

  view3 = [(AAUISpinnerViewController *)self view];
  [view3 addSubview:self->_spinnerView];

  v21 = MEMORY[0x1E696ACD8];
  topAnchor = [(UILabel *)self->_label topAnchor];
  bottomAnchor = [(UIActivityIndicatorView *)self->_spinnerView bottomAnchor];
  v27 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:8.0];
  v31[0] = v27;
  leadingAnchor = [(UILabel *)self->_label leadingAnchor];
  view4 = [(AAUISpinnerViewController *)self view];
  safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
  v31[1] = v22;
  trailingAnchor = [(UILabel *)self->_label trailingAnchor];
  view5 = [(AAUISpinnerViewController *)self view];
  safeAreaLayoutGuide2 = [view5 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];
  v31[2] = v7;
  centerXAnchor = [(UIActivityIndicatorView *)self->_spinnerView centerXAnchor];
  view6 = [(AAUISpinnerViewController *)self view];
  centerXAnchor2 = [view6 centerXAnchor];
  v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v31[3] = v11;
  centerYAnchor = [(UIActivityIndicatorView *)self->_spinnerView centerYAnchor];
  view7 = [(AAUISpinnerViewController *)self view];
  centerYAnchor2 = [view7 centerYAnchor];
  v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v31[4] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:5];
  [v21 activateConstraints:v16];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = AAUISpinnerViewController;
  [(AAUISpinnerViewController *)&v6 viewWillAppear:?];
  navigationController = [(AAUISpinnerViewController *)self navigationController];
  [navigationController setNavigationBarHidden:1 animated:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = AAUISpinnerViewController;
  [(AAUISpinnerViewController *)&v6 viewWillDisappear:?];
  navigationController = [(AAUISpinnerViewController *)self navigationController];
  [navigationController setNavigationBarHidden:0 animated:disappearCopy];
}

- (void)setSpinning:(BOOL)spinning
{
  spinnerView = self->_spinnerView;
  if (spinning)
  {
    [(UIActivityIndicatorView *)spinnerView startAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)spinnerView stopAnimating];
  }
}

@end