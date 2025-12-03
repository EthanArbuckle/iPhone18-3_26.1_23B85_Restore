@interface PKProgressContentViewController
- (void)loadView;
- (void)setProgress:(double)progress;
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
  view = [(PKProgressContentViewController *)self view];
  [view intrinsicContentSize];
  [(PKProgressContentViewController *)self setPreferredContentSize:?];
}

- (void)setProgress:(double)progress
{
  _contentView = [(PKProgressContentViewController *)self _contentView];
  [_contentView setProgress:progress];
}

@end