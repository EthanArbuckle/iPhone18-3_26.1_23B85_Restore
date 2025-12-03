@interface SSSWaitingForImageIdentifierUpdatesAlertContentViewController
- (void)loadView;
- (void)setProgress:(double)progress;
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
  view = [(SSSWaitingForImageIdentifierUpdatesAlertContentViewController *)self view];
  [view intrinsicContentSize];
  [(SSSWaitingForImageIdentifierUpdatesAlertContentViewController *)self setPreferredContentSize:?];
}

- (void)setProgress:(double)progress
{
  _contentView = [(SSSWaitingForImageIdentifierUpdatesAlertContentViewController *)self _contentView];
  [_contentView setProgress:progress];
}

@end