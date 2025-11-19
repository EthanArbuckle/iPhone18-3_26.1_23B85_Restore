@interface NTKDateComplicationAccessibility
- (id)_accessibilityComplicationSubType;
@end

@implementation NTKDateComplicationAccessibility

- (id)_accessibilityComplicationSubType
{
  v2 = [(NTKDateComplicationAccessibility *)self safeUnsignedIntegerForKey:@"dateStyle"];
  if (v2 == &dword_4)
  {
    v4 = @"complication.date.day.only";
    goto LABEL_5;
  }

  if (v2 == &dword_8)
  {
    v4 = @"complication.date.day.and.day.of.week";
LABEL_5:
    v5 = accessibilityLocalizedString(v4, v3);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end