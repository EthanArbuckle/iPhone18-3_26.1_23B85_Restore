@interface CRLSelectionAwareSafariViewController
- (CRLSelectionAwareSafariViewController)initWithURL:(id)l;
@end

@implementation CRLSelectionAwareSafariViewController

- (CRLSelectionAwareSafariViewController)initWithURL:(id)l
{
  v4.receiver = self;
  v4.super_class = CRLSelectionAwareSafariViewController;
  result = [(CRLSelectionAwareSafariViewController *)&v4 initWithURL:l];
  if (result)
  {
    result->_staysOpenOnSelectionChange = 1;
  }

  return result;
}

@end