@interface PKProgressContentViewController
- (void)loadView;
- (void)setProgress:(double)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation PKProgressContentViewController

- (void)loadView
{
  v3 = objc_opt_new();
  [(PKProgressContentViewController *)self setView:v3];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKProgressContentViewController;
  [(PKProgressContentViewController *)&v4 viewDidLayoutSubviews];
  v3 = [(PKProgressContentViewController *)self view];
  [v3 intrinsicContentSize];
  [(PKProgressContentViewController *)self setPreferredContentSize:?];
}

- (void)setProgress:(double)a3
{
  v4 = [(PKProgressContentViewController *)self _contentView];
  [v4 setProgress:a3];
}

@end