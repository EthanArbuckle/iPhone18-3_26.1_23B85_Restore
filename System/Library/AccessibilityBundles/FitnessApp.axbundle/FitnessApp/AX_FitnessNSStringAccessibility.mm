@interface AX_FitnessNSStringAccessibility
+ (id)attrStringWithValue:(id)value unit:(id)unit;
@end

@implementation AX_FitnessNSStringAccessibility

+ (id)attrStringWithValue:(id)value unit:(id)unit
{
  valueCopy = value;
  unitCopy = unit;
  v14.receiver = self;
  v14.super_class = &OBJC_METACLASS___AX_FitnessNSStringAccessibility;
  v8 = objc_msgSendSuper2(&v14, "attrStringWithValue:unit:", valueCopy, unitCopy);
  accessibilityLabel = [unitCopy accessibilityLabel];

  if (accessibilityLabel)
  {
    accessibilityLabel2 = [unitCopy accessibilityLabel];
    v13.receiver = self;
    v13.super_class = &OBJC_METACLASS___AX_FitnessNSStringAccessibility;
    v11 = objc_msgSendSuper2(&v13, "attrStringWithValue:unit:", valueCopy, accessibilityLabel2);

    [v8 setAccessibilityLabel:v11];
  }

  return v8;
}

@end