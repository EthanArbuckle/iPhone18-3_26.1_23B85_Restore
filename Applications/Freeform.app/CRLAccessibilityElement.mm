@interface CRLAccessibilityElement
- (CRLAccessibilityElement)initWithAccessibilityParent:(id)parent;
- (id)description;
@end

@implementation CRLAccessibilityElement

- (CRLAccessibilityElement)initWithAccessibilityParent:(id)parent
{
  v4.receiver = self;
  v4.super_class = CRLAccessibilityElement;
  return [(CRLAccessibilityElement *)&v4 initWithAccessibilityContainer:parent];
}

- (id)description
{
  accessibilityValue = [(CRLAccessibilityElement *)self accessibilityValue];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  accessibilityLabel = [(CRLAccessibilityElement *)self accessibilityLabel];
  if (accessibilityValue)
  {
    v7 = @"; value = ";
  }

  else
  {
    v7 = &stru_1018BCA28;
  }

  if (accessibilityValue)
  {
    v8 = accessibilityValue;
  }

  else
  {
    v8 = &stru_1018BCA28;
  }

  if (accessibilityValue)
  {
    v9 = @"";
  }

  else
  {
    v9 = &stru_1018BCA28;
  }

  [(CRLAccessibilityElement *)self accessibilityFrame];
  v10 = NSStringFromCGRect(v14);
  v11 = [NSString stringWithFormat:@"<%@: %p label = %@%@%@%@; frame = %@>", v5, self, accessibilityLabel, v7, v8, v9, v10];;

  return v11;
}

@end