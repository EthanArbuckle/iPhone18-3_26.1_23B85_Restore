@interface STSMailComposeViewController
- (void)viewDidLayoutSubviews;
@end

@implementation STSMailComposeViewController

- (void)viewDidLayoutSubviews
{
  v3 = [(STSMailComposeViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v6 = +[UIScreen mainScreen];
  [v6 bounds];
  v8 = v7 * 0.5;

  if (v5 < v8)
  {

    [(STSMailComposeViewController *)self dismissViewControllerAnimated:0 completion:0];
  }
}

@end