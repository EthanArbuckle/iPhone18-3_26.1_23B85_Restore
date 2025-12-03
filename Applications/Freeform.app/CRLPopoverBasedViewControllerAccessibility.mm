@interface CRLPopoverBasedViewControllerAccessibility
+ (id)crlaxCastFrom:(id)from;
- (BOOL)accessibilityPerformEscape;
- (UIBarButtonItem)_crlaxDoneButton;
- (void)_crlaxApplyAccessibilityInfo;
- (void)crlaxLoadAccessibilityInformation;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CRLPopoverBasedViewControllerAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CRLPopoverBasedViewControllerAccessibility;
  [(CRLPopoverBasedViewControllerAccessibility *)&v4 viewWillAppear:appear];
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
  navigationItem = [(CRLPopoverBasedViewControllerAccessibility *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];

  return rightBarButtonItem;
}

- (void)_crlaxApplyAccessibilityInfo
{
  _crlaxDoneButton = [(CRLPopoverBasedViewControllerAccessibility *)self _crlaxDoneButton];
  title = [_crlaxDoneButton title];
  v5 = [title length];

  if (!v5)
  {
    v8 = +[NSBundle mainBundle];
    v6 = [v8 localizedStringForKey:@"Done" value:0 table:0];
    _crlaxDoneButton2 = [(CRLPopoverBasedViewControllerAccessibility *)self _crlaxDoneButton];
    [_crlaxDoneButton2 setAccessibilityLabel:v6];
  }
}

@end