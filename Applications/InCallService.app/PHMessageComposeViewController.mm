@interface PHMessageComposeViewController
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PHMessageComposeViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = PHMessageComposeViewController;
  [(PHMessageComposeViewController *)&v3 viewWillAppear:a3];
  [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHMessageComposeViewControllerAssertionReason"];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = PHMessageComposeViewController;
  [(PHMessageComposeViewController *)&v3 viewDidDisappear:a3];
  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHMessageComposeViewControllerAssertionReason"];
}

@end