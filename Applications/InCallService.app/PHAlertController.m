@interface PHAlertController
- (PHAlertController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dealloc;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PHAlertController

- (PHAlertController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = PHAlertController;
  v4 = [(PHAlertController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(PHAlertController *)v4 setDismissalAssertionReason:@"PHAlertControllerGenericAssertionReason"];
  }

  return v5;
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PHAlertController;
  [(PHAlertController *)&v5 viewWillAppear:a3];
  v4 = [(PHAlertController *)self dismissalAssertionReason];
  [PHInCallRootViewController obtainDismissalAssertionForReason:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PHAlertController;
  [(PHAlertController *)&v5 viewDidAppear:a3];
  v4 = [(PHAlertController *)self dismissalAssertionReason];
  [PHInCallRootViewController obtainDismissalAssertionForReason:v4];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PHAlertController;
  [(PHAlertController *)&v5 viewDidDisappear:a3];
  v4 = [(PHAlertController *)self dismissalAssertionReason];
  [PHInCallRootViewController releaseDismissalAssertionForReason:v4];
}

- (void)dealloc
{
  v3 = [(PHAlertController *)self dismissalAssertionReason];
  [PHInCallRootViewController releaseDismissalAssertionForReason:v3];

  v4.receiver = self;
  v4.super_class = PHAlertController;
  [(PHAlertController *)&v4 dealloc];
}

@end