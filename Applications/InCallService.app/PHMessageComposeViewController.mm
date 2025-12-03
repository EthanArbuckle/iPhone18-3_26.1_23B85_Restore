@interface PHMessageComposeViewController
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PHMessageComposeViewController

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = PHMessageComposeViewController;
  [(PHMessageComposeViewController *)&v3 viewWillAppear:appear];
  [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHMessageComposeViewControllerAssertionReason"];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = PHMessageComposeViewController;
  [(PHMessageComposeViewController *)&v3 viewDidDisappear:disappear];
  [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHMessageComposeViewControllerAssertionReason"];
}

@end