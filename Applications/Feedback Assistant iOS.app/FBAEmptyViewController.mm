@interface FBAEmptyViewController
- (UILabel)contentUnavailableLabel;
- (void)viewDidLoad;
@end

@implementation FBAEmptyViewController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = FBAEmptyViewController;
  [(FBAEmptyViewController *)&v7 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  view = [(FBAEmptyViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = +[UIColor secondaryLabelColor];
  contentUnavailableLabel = [(FBAEmptyViewController *)self contentUnavailableLabel];
  [contentUnavailableLabel setTextColor:v5];
}

- (UILabel)contentUnavailableLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_contentUnavailableLabel);

  return WeakRetained;
}

@end