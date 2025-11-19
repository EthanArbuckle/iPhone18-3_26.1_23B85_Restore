@interface CRLStepperAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (BOOL)isAccessibilityElement;
- (id)accessibilityValue;
- (id)automationElements;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)crlaxPerformFocusAfterDelay:(double)a3;
@end

@implementation CRLStepperAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (void)crlaxPerformFocusAfterDelay:(double)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1004DAD0C;
  v3[3] = &unk_10183AB38;
  v3[4] = self;
  CRLAccessibilityPerformBlockOnMainThreadAfterDelay(v3, a3);
}

- (BOOL)isAccessibilityElement
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    return 1;
  }

  return UIAccessibilityIsSwitchControlRunning();
}

- (void)accessibilityIncrement
{
  v3 = [(CRLStepperAccessibility *)self crlaxTarget];
  v4 = [v3 i_upButton];
  [v4 sendActionsForControlEvents:1];

  v6 = [(CRLStepperAccessibility *)self crlaxTarget];
  v5 = [v6 i_upButton];
  [v5 sendActionsForControlEvents:64];
}

- (void)accessibilityDecrement
{
  v3 = [(CRLStepperAccessibility *)self crlaxTarget];
  v4 = [v3 i_downButton];
  [v4 sendActionsForControlEvents:1];

  v6 = [(CRLStepperAccessibility *)self crlaxTarget];
  v5 = [v6 i_downButton];
  [v5 sendActionsForControlEvents:64];
}

- (id)accessibilityValue
{
  v3 = [(CRLStepperAccessibility *)self crlaxDelegate];
  if (v3 && (v4 = v3, [(CRLStepperAccessibility *)self crlaxDelegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) != 0))
  {
    v7 = [(CRLStepperAccessibility *)self crlaxDelegate];
    v8 = [v7 crlaxValueDescriptionForStepper:self];
  }

  else
  {
    v7 = CRLAccessibilityStringsDictKey(@"stroke.width.points");
    v9 = [(CRLStepperAccessibility *)self crlaxTarget];
    [v9 currentValue];
    v11 = v10;

    v8 = [NSString stringWithFormat:v7, v11];
  }

  v12 = v8;

  return v12;
}

- (BOOL)accessibilityPerformEscape
{
  v3 = [(CRLStepperAccessibility *)self crlaxDelegate];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(CRLStepperAccessibility *)self crlaxDelegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = [(CRLStepperAccessibility *)self crlaxDelegate];
  v8 = [v7 crlaxPerformEscapeForStepper:self];

  return v8;
}

- (id)automationElements
{
  v3 = objc_opt_new();
  v4 = [(CRLStepperAccessibility *)self crlaxTarget];
  v5 = [v4 i_upButton];
  [v3 crlaxAddObjectIfNotNilWithAssert:v5];

  v6 = [(CRLStepperAccessibility *)self crlaxTarget];
  v7 = [v6 i_downButton];
  [v3 crlaxAddObjectIfNotNilWithAssert:v7];

  v8 = [v3 copy];

  return v8;
}

@end