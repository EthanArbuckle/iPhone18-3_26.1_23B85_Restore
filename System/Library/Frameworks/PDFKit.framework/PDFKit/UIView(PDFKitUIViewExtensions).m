@interface UIView(PDFKitUIViewExtensions)
- (id)_PDFViewParentViewController;
@end

@implementation UIView(PDFKitUIViewExtensions)

- (id)_PDFViewParentViewController
{
  v1 = [a1 nextResponder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
LABEL_5:
    v3 = v2;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 _PDFViewParentViewController];
    goto LABEL_5;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

@end