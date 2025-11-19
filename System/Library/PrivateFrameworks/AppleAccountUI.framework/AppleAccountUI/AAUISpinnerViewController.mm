@interface AAUISpinnerViewController
- (AAUISpinnerViewController)initWithCoder:(id)a3;
- (AAUISpinnerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_commonInit;
- (void)setSpinning:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AAUISpinnerViewController

- (AAUISpinnerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = AAUISpinnerViewController;
  v4 = [(AAUISpinnerViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(AAUISpinnerViewController *)v4 _commonInit];
  }

  return v5;
}

- (AAUISpinnerViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AAUISpinnerViewController;
  v3 = [(AAUISpinnerViewController *)&v6 initWithCoder:a3];
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
  v3 = [(AAUISpinnerViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [(AAUISpinnerViewController *)self view];
  [v5 addSubview:self->_label];

  v6 = [(AAUISpinnerViewController *)self view];
  [v6 addSubview:self->_spinnerView];

  v21 = MEMORY[0x1E696ACD8];
  v29 = [(UILabel *)self->_label topAnchor];
  v28 = [(UIActivityIndicatorView *)self->_spinnerView bottomAnchor];
  v27 = [v29 constraintEqualToAnchor:v28 constant:8.0];
  v31[0] = v27;
  v25 = [(UILabel *)self->_label leadingAnchor];
  v26 = [(AAUISpinnerViewController *)self view];
  v24 = [v26 safeAreaLayoutGuide];
  v23 = [v24 leadingAnchor];
  v22 = [v25 constraintEqualToAnchor:v23 constant:8.0];
  v31[1] = v22;
  v19 = [(UILabel *)self->_label trailingAnchor];
  v20 = [(AAUISpinnerViewController *)self view];
  v18 = [v20 safeAreaLayoutGuide];
  v17 = [v18 trailingAnchor];
  v7 = [v19 constraintEqualToAnchor:v17 constant:-8.0];
  v31[2] = v7;
  v8 = [(UIActivityIndicatorView *)self->_spinnerView centerXAnchor];
  v9 = [(AAUISpinnerViewController *)self view];
  v10 = [v9 centerXAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v31[3] = v11;
  v12 = [(UIActivityIndicatorView *)self->_spinnerView centerYAnchor];
  v13 = [(AAUISpinnerViewController *)self view];
  v14 = [v13 centerYAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v31[4] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:5];
  [v21 activateConstraints:v16];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = AAUISpinnerViewController;
  [(AAUISpinnerViewController *)&v6 viewWillAppear:?];
  v5 = [(AAUISpinnerViewController *)self navigationController];
  [v5 setNavigationBarHidden:1 animated:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = AAUISpinnerViewController;
  [(AAUISpinnerViewController *)&v6 viewWillDisappear:?];
  v5 = [(AAUISpinnerViewController *)self navigationController];
  [v5 setNavigationBarHidden:0 animated:v3];
}

- (void)setSpinning:(BOOL)a3
{
  spinnerView = self->_spinnerView;
  if (a3)
  {
    [(UIActivityIndicatorView *)spinnerView startAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)spinnerView stopAnimating];
  }
}

@end