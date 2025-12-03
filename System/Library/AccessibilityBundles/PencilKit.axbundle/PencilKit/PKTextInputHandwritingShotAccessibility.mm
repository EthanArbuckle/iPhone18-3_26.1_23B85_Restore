@interface PKTextInputHandwritingShotAccessibility
- (BOOL)_shouldTargetFirstResponderElement:(id)element strokeIdentifiers:(id)identifiers;
@end

@implementation PKTextInputHandwritingShotAccessibility

- (BOOL)_shouldTargetFirstResponderElement:(id)element strokeIdentifiers:(id)identifiers
{
  elementCopy = element;
  identifiersCopy = identifiers;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PKTextInputHandwritingShotAccessibility;
    v8 = [(PKTextInputHandwritingShotAccessibility *)&v10 _shouldTargetFirstResponderElement:elementCopy strokeIdentifiers:identifiersCopy];
  }

  return v8;
}

@end