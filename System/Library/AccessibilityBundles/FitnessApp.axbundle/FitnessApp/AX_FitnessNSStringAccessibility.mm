@interface AX_FitnessNSStringAccessibility
+ (id)attrStringWithValue:(id)a3 unit:(id)a4;
@end

@implementation AX_FitnessNSStringAccessibility

+ (id)attrStringWithValue:(id)a3 unit:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = a1;
  v14.super_class = &OBJC_METACLASS___AX_FitnessNSStringAccessibility;
  v8 = objc_msgSendSuper2(&v14, "attrStringWithValue:unit:", v6, v7);
  v9 = [v7 accessibilityLabel];

  if (v9)
  {
    v10 = [v7 accessibilityLabel];
    v13.receiver = a1;
    v13.super_class = &OBJC_METACLASS___AX_FitnessNSStringAccessibility;
    v11 = objc_msgSendSuper2(&v13, "attrStringWithValue:unit:", v6, v10);

    [v8 setAccessibilityLabel:v11];
  }

  return v8;
}

@end