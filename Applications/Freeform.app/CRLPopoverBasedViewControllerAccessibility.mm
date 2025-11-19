@interface CRLPopoverBasedViewControllerAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (UIBarButtonItem)_crlaxDoneButton;
- (void)_crlaxApplyAccessibilityInfo;
- (void)crlaxLoadAccessibilityInformation;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CRLPopoverBasedViewControllerAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CRLPopoverBasedViewControllerAccessibility;
  [(CRLPopoverBasedViewControllerAccessibility *)&v4 viewWillAppear:a3];
  [(CRLPopoverBasedViewControllerAccessibility *)self _crlaxApplyAccessibilityInfo];
}

- (BOOL)accessibilityPerformEscape
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003BE574;
  v3[3] = &unk_10183AB38;
  v3[4] = self;
  if (__CRLAccessibilityPerformSafeBlock(v3))
  {
    abort();
  }

  return 1;
}

- (void)crlaxLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = CRLPopoverBasedViewControllerAccessibility;
  [(CRLPopoverBasedViewControllerAccessibility *)&v3 crlaxLoadAccessibilityInformation];
  [(CRLPopoverBasedViewControllerAccessibility *)self _crlaxApplyAccessibilityInfo];
}

- (UIBarButtonItem)_crlaxDoneButton
{
  v2 = [(CRLPopoverBasedViewControllerAccessibility *)self navigationItem];
  v3 = [v2 rightBarButtonItem];

  return v3;
}

- (void)_crlaxApplyAccessibilityInfo
{
  v3 = [(CRLPopoverBasedViewControllerAccessibility *)self _crlaxDoneButton];
  v4 = [v3 title];
  v5 = [v4 length];

  if (!v5)
  {
    v8 = +[NSBundle mainBundle];
    v6 = [v8 localizedStringForKey:@"Done" value:0 table:0];
    v7 = [(CRLPopoverBasedViewControllerAccessibility *)self _crlaxDoneButton];
    [v7 setAccessibilityLabel:v6];
  }
}

@end