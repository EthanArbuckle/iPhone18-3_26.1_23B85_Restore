@interface CRLStepperAccessibility
+ (id)crlaxCastFrom:(id)from;
- (BOOL)accessibilityPerformEscape;
- (BOOL)isAccessibilityElement;
- (id)accessibilityValue;
- (id)automationElements;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)crlaxPerformFocusAfterDelay:(double)delay;
@end

@implementation CRLStepperAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (void)crlaxPerformFocusAfterDelay:(double)delay
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1004DAD0C;
  v3[3] = &unk_10183AB38;
  v3[4] = self;
  CRLAccessibilityPerformBlockOnMainThreadAfterDelay(v3, delay);
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
  crlaxTarget = [(CRLStepperAccessibility *)self crlaxTarget];
  i_upButton = [crlaxTarget i_upButton];
  [i_upButton sendActionsForControlEvents:1];

  crlaxTarget2 = [(CRLStepperAccessibility *)self crlaxTarget];
  i_upButton2 = [crlaxTarget2 i_upButton];
  [i_upButton2 sendActionsForControlEvents:64];
}

- (void)accessibilityDecrement
{
  crlaxTarget = [(CRLStepperAccessibility *)self crlaxTarget];
  i_downButton = [crlaxTarget i_downButton];
  [i_downButton sendActionsForControlEvents:1];

  crlaxTarget2 = [(CRLStepperAccessibility *)self crlaxTarget];
  i_downButton2 = [crlaxTarget2 i_downButton];
  [i_downButton2 sendActionsForControlEvents:64];
}

- (id)accessibilityValue
{
  crlaxDelegate = [(CRLStepperAccessibility *)self crlaxDelegate];
  if (crlaxDelegate && (v4 = crlaxDelegate, [(CRLStepperAccessibility *)self crlaxDelegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) != 0))
  {
    crlaxDelegate2 = [(CRLStepperAccessibility *)self crlaxDelegate];
    v8 = [crlaxDelegate2 crlaxValueDescriptionForStepper:self];
  }

  else
  {
    crlaxDelegate2 = CRLAccessibilityStringsDictKey(@"stroke.width.points");
    crlaxTarget = [(CRLStepperAccessibility *)self crlaxTarget];
    [crlaxTarget currentValue];
    v11 = v10;

    v8 = [NSString stringWithFormat:crlaxDelegate2, v11];
  }

  v12 = v8;

  return v12;
}

- (BOOL)accessibilityPerformEscape
{
  crlaxDelegate = [(CRLStepperAccessibility *)self crlaxDelegate];
  if (!crlaxDelegate)
  {
    return 0;
  }

  v4 = crlaxDelegate;
  crlaxDelegate2 = [(CRLStepperAccessibility *)self crlaxDelegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  crlaxDelegate3 = [(CRLStepperAccessibility *)self crlaxDelegate];
  v8 = [crlaxDelegate3 crlaxPerformEscapeForStepper:self];

  return v8;
}

- (id)automationElements
{
  v3 = objc_opt_new();
  crlaxTarget = [(CRLStepperAccessibility *)self crlaxTarget];
  i_upButton = [crlaxTarget i_upButton];
  [v3 crlaxAddObjectIfNotNilWithAssert:i_upButton];

  crlaxTarget2 = [(CRLStepperAccessibility *)self crlaxTarget];
  i_downButton = [crlaxTarget2 i_downButton];
  [v3 crlaxAddObjectIfNotNilWithAssert:i_downButton];

  v8 = [v3 copy];

  return v8;
}

@end