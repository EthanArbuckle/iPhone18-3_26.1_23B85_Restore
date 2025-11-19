@interface PKTextInputHandwritingShotAccessibility
- (BOOL)_shouldTargetFirstResponderElement:(id)a3 strokeIdentifiers:(id)a4;
@end

@implementation PKTextInputHandwritingShotAccessibility

- (BOOL)_shouldTargetFirstResponderElement:(id)a3 strokeIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PKTextInputHandwritingShotAccessibility;
    v8 = [(PKTextInputHandwritingShotAccessibility *)&v10 _shouldTargetFirstResponderElement:v6 strokeIdentifiers:v7];
  }

  return v8;
}

@end