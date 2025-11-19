@interface CRLSelectionAwareSafariViewController
- (CRLSelectionAwareSafariViewController)initWithURL:(id)a3;
@end

@implementation CRLSelectionAwareSafariViewController

- (CRLSelectionAwareSafariViewController)initWithURL:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLSelectionAwareSafariViewController;
  result = [(CRLSelectionAwareSafariViewController *)&v4 initWithURL:a3];
  if (result)
  {
    result->_staysOpenOnSelectionChange = 1;
  }

  return result;
}

@end