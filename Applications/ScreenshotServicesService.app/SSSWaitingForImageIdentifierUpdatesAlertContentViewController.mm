@interface SSSWaitingForImageIdentifierUpdatesAlertContentViewController
- (void)loadView;
- (void)setProgress:(double)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation SSSWaitingForImageIdentifierUpdatesAlertContentViewController

- (void)loadView
{
  v3 = objc_opt_new();
  [(SSSWaitingForImageIdentifierUpdatesAlertContentViewController *)self setView:v3];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = SSSWaitingForImageIdentifierUpdatesAlertContentViewController;
  [(SSSWaitingForImageIdentifierUpdatesAlertContentViewController *)&v4 viewDidLayoutSubviews];
  v3 = [(SSSWaitingForImageIdentifierUpdatesAlertContentViewController *)self view];
  [v3 intrinsicContentSize];
  [(SSSWaitingForImageIdentifierUpdatesAlertContentViewController *)self setPreferredContentSize:?];
}

- (void)setProgress:(double)a3
{
  v4 = [(SSSWaitingForImageIdentifierUpdatesAlertContentViewController *)self _contentView];
  [v4 setProgress:a3];
}

@end