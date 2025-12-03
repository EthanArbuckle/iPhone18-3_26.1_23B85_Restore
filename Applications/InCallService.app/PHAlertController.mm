@interface PHAlertController
- (PHAlertController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PHAlertController

- (PHAlertController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = PHAlertController;
  v4 = [(PHAlertController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(PHAlertController *)v4 setDismissalAssertionReason:@"PHAlertControllerGenericAssertionReason"];
  }

  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PHAlertController;
  [(PHAlertController *)&v5 viewWillAppear:appear];
  dismissalAssertionReason = [(PHAlertController *)self dismissalAssertionReason];
  [PHInCallRootViewController obtainDismissalAssertionForReason:dismissalAssertionReason];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PHAlertController;
  [(PHAlertController *)&v5 viewDidAppear:appear];
  dismissalAssertionReason = [(PHAlertController *)self dismissalAssertionReason];
  [PHInCallRootViewController obtainDismissalAssertionForReason:dismissalAssertionReason];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PHAlertController;
  [(PHAlertController *)&v5 viewDidDisappear:disappear];
  dismissalAssertionReason = [(PHAlertController *)self dismissalAssertionReason];
  [PHInCallRootViewController releaseDismissalAssertionForReason:dismissalAssertionReason];
}

- (void)dealloc
{
  dismissalAssertionReason = [(PHAlertController *)self dismissalAssertionReason];
  [PHInCallRootViewController releaseDismissalAssertionForReason:dismissalAssertionReason];

  v4.receiver = self;
  v4.super_class = PHAlertController;
  [(PHAlertController *)&v4 dealloc];
}

@end