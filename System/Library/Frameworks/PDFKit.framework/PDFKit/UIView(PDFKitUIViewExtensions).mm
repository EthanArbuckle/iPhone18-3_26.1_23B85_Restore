@interface UIView(PDFKitUIViewExtensions)
- (id)_PDFViewParentViewController;
@end

@implementation UIView(PDFKitUIViewExtensions)

- (id)_PDFViewParentViewController
{
  nextResponder = [self nextResponder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _PDFViewParentViewController = nextResponder;
LABEL_5:
    v3 = _PDFViewParentViewController;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _PDFViewParentViewController = [nextResponder _PDFViewParentViewController];
    goto LABEL_5;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

@end