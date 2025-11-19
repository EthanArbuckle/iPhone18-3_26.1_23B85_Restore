@interface CRLAccessibilityElement
- (CRLAccessibilityElement)initWithAccessibilityParent:(id)a3;
- (id)description;
@end

@implementation CRLAccessibilityElement

- (CRLAccessibilityElement)initWithAccessibilityParent:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLAccessibilityElement;
  return [(CRLAccessibilityElement *)&v4 initWithAccessibilityContainer:a3];
}

- (id)description
{
  v3 = [(CRLAccessibilityElement *)self accessibilityValue];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CRLAccessibilityElement *)self accessibilityLabel];
  if (v3)
  {
    v7 = @"; value = ";
  }

  else
  {
    v7 = &stru_1018BCA28;
  }

  if (v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = &stru_1018BCA28;
  }

  if (v3)
  {
    v9 = @"";
  }

  else
  {
    v9 = &stru_1018BCA28;
  }

  [(CRLAccessibilityElement *)self accessibilityFrame];
  v10 = NSStringFromCGRect(v14);
  v11 = [NSString stringWithFormat:@"<%@: %p label = %@%@%@%@; frame = %@>", v5, self, v6, v7, v8, v9, v10];;

  return v11;
}

@end